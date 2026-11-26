.class public Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;
.super Ljava/lang/Object;
.source "HiddenQuestionFormulaUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiddenQuestionFormula"

.field private static myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 1

    .line 75
    sget-object v0, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object v0
.end method

.method public static addAdditionDischargeQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2425
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2426
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2428
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/constants/RchConstants;->GOVERNMENT_INSTITUTIONS:Ljava/util/List;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 2429
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getTypeId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2430
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2431
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addAllOptionInSubcentreList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 9

    .line 989
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_7

    .line 990
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 991
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    const-string v1, "Level-5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 992
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_1

    .line 994
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    .line 995
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getIdOfValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 996
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 1001
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 1005
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    const/4 v2, 0x0

    .line 1006
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setIdOfValue(I)V

    .line 1007
    const-string v3, "All"

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    .line 1008
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1011
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    .line 1015
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1016
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getIdOfValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1018
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1023
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 1024
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->createAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1025
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1026
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 1027
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1028
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 1032
    :cond_6
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setOptions(Ljava/util/List;)V

    .line 1033
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setDatamap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1035
    const-string v1, "HiddenQuestionFormula"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public static addMotherList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 2295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2296
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2298
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2299
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2300
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2301
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2302
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "629"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "641"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2303
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2307
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2309
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 2310
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 2311
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 2312
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2314
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2316
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 2317
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 2318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 2319
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2324
    :cond_3
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 2325
    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 2326
    const-string v3, "Not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 2327
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2328
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_5

    .line 2332
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setOptions(Ljava/util/List;)V

    .line 2333
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 2335
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->createAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2336
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2337
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 2338
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2339
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static appendVisionData(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3492
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3493
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ->\n"

    .line 3494
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    .line 3496
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static appetiteTestEligibilityCheck([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 261
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 264
    array-length v0, p0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 265
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v4, 0x4

    aget-object p0, p0, v4

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4027000000000000L    # 11.5

    cmpg-double v0, v3, v5

    if-ltz v0, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SD4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SD3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "1"

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 273
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static calculateAllSd([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 2436
    array-length v0, p0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 2437
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p1

    .line 2438
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2439
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 2440
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2443
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "age"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2445
    invoke-static {v4, v3, v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateWaSd(ICF)I

    move-result v5

    .line 2446
    invoke-static {v4, v3, v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateHaSd(ICF)I

    move-result v4

    .line 2447
    invoke-static {v0, v2, v3}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateWhSd(FFC)I

    move-result v0

    .line 2449
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2451
    const-string v3, "Weight for Age"

    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->coloredLine(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2452
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2453
    const-string v6, "Height for Age"

    invoke-static {v6, v4}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->coloredLine(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2454
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2455
    const-string v3, "Weight for Height"

    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->coloredLine(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2457
    array-length v3, p0

    const/4 v6, 0x7

    if-ne v3, v6, :cond_0

    .line 2459
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    aget-object p0, p0, v1

    .line 2460
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_0

    .line 2465
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2467
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2470
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Weight for Age:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Height for Age:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Weight for Height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2475
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static calculateCbacScore()V
    .locals 6

    .line 2349
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ncdScoreService:Lcom/argusoft/sewa/android/app/core/NcdScoreService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/NcdScoreService;->calculateCbacScoreForMember()Ljava/lang/Integer;

    move-result-object v0

    .line 2350
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "cbacScore"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    .line 2360
    :goto_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v1, :cond_2

    .line 2362
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 2364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2365
    :cond_1
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static calculateHaSd(ICF)I
    .locals 1

    .line 2547
    sget-object v0, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;->HFA_MAP:Ljava/util/Map;

    .line 2548
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object p0

    .line 2547
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 2553
    :cond_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus3:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p0, -0x4

    return p0

    .line 2554
    :cond_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus2:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    const/4 p0, -0x3

    return p0

    .line 2555
    :cond_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus1:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    const/4 p0, -0x2

    return p0

    .line 2556
    :cond_3
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->median:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 2557
    :cond_4
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus1:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_5

    const/4 p0, 0x0

    return p0

    .line 2558
    :cond_5
    iget p0, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus2:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x2

    return p0
.end method

.method public static calculateNutritionScore([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 3282
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3285
    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_1

    .line 3286
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v5, p0, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3287
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3289
    :try_start_0
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3290
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-lt v3, v0, :cond_2

    const/16 v0, 0xe

    if-gt v3, v0, :cond_2

    .line 3298
    const-string v0, "Normal nutritional status"

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    if-lt v3, v0, :cond_3

    const/16 v0, 0xb

    if-gt v3, v0, :cond_3

    .line 3300
    const-string v0, "At risk of malnutrition"

    goto :goto_1

    .line 3302
    :cond_3
    const-string v0, "Malnourished"

    .line 3305
    :goto_1
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object p0, p0, v2

    .line 3307
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3309
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3312
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3313
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_4

    .line 3315
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3316
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 3318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method

.method public static calculateRUTFSachets([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 2939
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 2940
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p1

    .line 2941
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2942
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2943
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2947
    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2948
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2951
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->countSachets(Ljava/lang/Float;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2953
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->countSachets(Ljava/lang/Float;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2955
    :goto_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    const/4 v1, 0x4

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_2

    .line 2958
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 2960
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static calculateSDScore([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 2595
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    .line 2596
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    .line 2597
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2598
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2599
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v5, 0x3

    aget-object v5, p0, v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 2603
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 2607
    const-string v6, "T"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2608
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 2611
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->calculateSDScore(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2613
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->getSDScoreForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2615
    array-length v3, p0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 2616
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_8

    .line 2618
    const-string v1, "Cannot be calculated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2619
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2621
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2623
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 2624
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    const-string v1, "colorCoding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2625
    const-string p1, "SD2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2626
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->yellow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 2627
    :cond_4
    const-string p1, "SD1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "MEDIAN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "NONE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 2630
    :cond_5
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->pregnantWomenTextColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 2628
    :cond_6
    :goto_3
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2633
    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public static calculateWaSd(ICF)I
    .locals 1

    .line 2526
    sget-object v0, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;->WA_MAP:Ljava/util/Map;

    .line 2527
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object p0

    .line 2526
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 2532
    :cond_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus3:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p0, -0x4

    return p0

    .line 2533
    :cond_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus2:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    const/4 p0, -0x3

    return p0

    .line 2534
    :cond_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus1:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    const/4 p0, -0x2

    return p0

    .line 2535
    :cond_3
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->median:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 2536
    :cond_4
    iget p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus1:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_5

    const/4 p0, 0x0

    return p0

    .line 2537
    :cond_5
    iget p0, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus2:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x2

    return p0
.end method

.method public static calculateWhSd(FFC)I
    .locals 1

    .line 2568
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 2570
    sget-object v0, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;->WH_MAP:Ljava/util/Map;

    .line 2571
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object p0

    .line 2570
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 2578
    :cond_0
    iget p2, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;->sdMinus3:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/4 p0, -0x4

    return p0

    .line 2582
    :cond_1
    iget p2, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;->sdMinus2:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    const/4 p0, -0x3

    return p0

    .line 2586
    :cond_2
    iget p0, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;->median:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static checkAgeIfWronglyRegistered(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 1900
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1901
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dob"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1903
    new-instance v0, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1905
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, -0x12

    const/4 v3, 0x1

    .line 1906
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 1907
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/16 v4, -0x20

    .line 1908
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1909
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1910
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1912
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 1914
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1915
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkAgeLessThan20(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 15

    .line 1920
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1921
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1922
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1924
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1925
    const-string v4, "loopCounterForAliveMembers"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 1926
    const-string v6, "loopCounterForFemaleMarriedMembers"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 1927
    const-string v8, "loopCounterForWifeMembers"

    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    .line 1928
    const-string v10, "loopCounterForMaleMarriedMembers"

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1930
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "motherId"

    .line 1931
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1930
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1934
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1937
    :cond_0
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "ans12"

    .line 1938
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1937
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1939
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "defaultMaritalStatus"

    .line 1940
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v13

    invoke-static {v12, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1939
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1944
    const-string v12, "629"

    if-eqz v3, :cond_4

    const-string v13, "2"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v11, :cond_2

    .line 1945
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "641"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1946
    :cond_1
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1948
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "husbandId"

    .line 1949
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v14, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1948
    invoke-interface {v13, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    .line 1950
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1952
    :cond_2
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1953
    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1956
    :cond_3
    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1957
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_8

    .line 1963
    const-string p0, "1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v11, :cond_5

    .line 1964
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1965
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1966
    :cond_5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1967
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1970
    :cond_6
    :goto_1
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1971
    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1973
    :cond_7
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1974
    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1978
    :cond_8
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1979
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1980
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1981
    invoke-interface {v2, v10, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1982
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static checkAnyMemberOtpVerificationDone(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2929
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2930
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2932
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAnyMemberMobileVerificationDone:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2934
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkChiranjeeviEligibility(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2409
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2410
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2411
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 2412
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getTypeId()Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RchConstants;->INFRA_PRIVATE_HOSPITAL:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 2413
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getChiranjeevi()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2415
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2416
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2417
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2418
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    const-string v1, "625"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2419
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2420
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static checkContains([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 108
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 112
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 115
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 116
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static checkContainsAnyLoop([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 3081
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3082
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3084
    array-length v0, p0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    .line 3087
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 3091
    :goto_0
    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    if-gt v3, v4, :cond_2

    .line 3092
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v5, p0, v2

    invoke-static {v5, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3094
    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3095
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3096
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static checkContainsLoop([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 1791
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1794
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1796
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 1800
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1801
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1802
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1803
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1804
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static checkContainsMultiple([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 2394
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2395
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2396
    array-length v0, p0

    if-le v0, v1, :cond_1

    .line 2397
    aget-object v0, p0, v1

    const/4 v1, 0x2

    .line 2398
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2399
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2400
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2401
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static checkContainsWithLabel([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 170
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 175
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 178
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 179
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static checkDateBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 10

    .line 832
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_c

    .line 833
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    .line 834
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    .line 835
    aget-object v5, p0, v5

    const/4 v6, 0x4

    .line 836
    aget-object v6, p0, v6

    if-eqz v6, :cond_b

    .line 839
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v8

    if-lez v8, :cond_0

    .line 841
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    :cond_0
    if-eqz v7, :cond_a

    .line 848
    array-length v6, p0

    const/4 v8, 0x6

    if-ne v6, v8, :cond_1

    .line 849
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v8, p0, v2

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 850
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v8

    if-lez v8, :cond_2

    .line 851
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 856
    new-instance p0, Ljava/util/Date;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    .line 858
    :cond_3
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 861
    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 863
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDayOnGivenDate(Ljava/lang/Long;Ljava/lang/Long;)[I

    move-result-object p0

    .line 864
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    .line 867
    const-string v2, "Y"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 872
    :cond_4
    const-string v2, "M"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 873
    aget v2, p0, v1

    aget p0, p0, v6

    mul-int/lit8 p0, p0, 0xc

    add-int/2addr v2, p0

    if-gt v2, v4, :cond_5

    if-ge v2, v0, :cond_d

    .line 875
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 878
    :cond_6
    const-string v2, "D"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 879
    aget v2, p0, v3

    aget v3, p0, v6

    mul-int/lit16 v3, v3, 0x16d

    add-int/2addr v2, v3

    aget p0, p0, v1

    mul-int/lit8 p0, p0, 0x1e

    add-int/2addr v2, p0

    if-gt v2, v4, :cond_7

    if-ge v2, v0, :cond_d

    .line 881
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 868
    :cond_8
    :goto_2
    aget p0, p0, v6

    if-gt p0, v4, :cond_9

    if-ge p0, v0, :cond_d

    .line 869
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 886
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 890
    :cond_b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 894
    :cond_c
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public static checkFamilyReverification(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 937
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 938
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.argusoft.imtecho.family.state.unverified"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 939
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.argusoft.imtecho.family.state.orphan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 940
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 941
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 942
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 949
    :goto_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v0, :cond_3

    .line 950
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 951
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 952
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 953
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_IN_REVERIFICATION_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static checkFamilyState([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 2116
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 2117
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const-string v2, "U"

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    .line 2118
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    .line 2119
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "VN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "V"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "R"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "N"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 2176
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2177
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2166
    :pswitch_0
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 2167
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    .line 2171
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2172
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2168
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2169
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2130
    :pswitch_1
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 2131
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2132
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2134
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2135
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2121
    :pswitch_2
    const-string p0, "com.argusoft.imtecho.family.state.unverified"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2122
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2123
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2125
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2126
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2157
    :pswitch_3
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_IN_REVERIFICATION_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2158
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2159
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2161
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2162
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2148
    :pswitch_4
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 2149
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2150
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2152
    :cond_b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2153
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2139
    :pswitch_5
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ARCHIVED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 2140
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2141
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2143
    :cond_c
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2144
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_2

    .line 2181
    :cond_d
    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 2182
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2183
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_2

    .line 2185
    :cond_e
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2186
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_2

    .line 2190
    :cond_f
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2191
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x4e -> :sswitch_4
        0x52 -> :sswitch_3
        0x55 -> :sswitch_2
        0x56 -> :sswitch_1
        0xab8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkIfAnyChildExisits(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 21

    move-object/from16 v0, p0

    .line 2011
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->removeMemberCountForRemovedMember()V

    .line 2012
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2013
    const-string v2, "loopCounterForFemaleMarriedMembers"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2014
    const-string v4, "loopCounterForAliveMembers"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    .line 2016
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v2, :cond_7

    .line 2017
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2021
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2023
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_0

    move-object v7, v8

    goto :goto_1

    :cond_0
    move-object v7, v5

    .line 2027
    :goto_1
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dob"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 2030
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 2031
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, -0xc

    .line 2032
    invoke-virtual {v9, v4, v7}, Ljava/util/Calendar;->add(II)V

    const/16 v7, 0xb

    const/4 v10, 0x0

    .line 2033
    invoke-virtual {v9, v7, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    .line 2034
    invoke-virtual {v9, v12, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xd

    .line 2035
    invoke-virtual {v9, v13, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xe

    .line 2036
    invoke-virtual {v9, v14, v10}, Ljava/util/Calendar;->set(II)V

    .line 2037
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    .line 2039
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    .line 2040
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 2045
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object v3, v8

    .line 2049
    :cond_2
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2051
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2052
    invoke-virtual {v9, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 2053
    invoke-virtual {v9, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 2054
    invoke-virtual {v9, v13, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 2055
    invoke-virtual {v9, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 2056
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v4, v19, v15

    if-gtz v4, :cond_5

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2059
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_3

    .line 2061
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    const/16 v2, 0x2711

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 2062
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2063
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMotherChildRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2064
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    .line 2065
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionUIFrame(Ljava/lang/Object;)V

    .line 2066
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 2068
    invoke-virtual {v0, v2, v10}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2070
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2071
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    const/16 v3, 0xe

    :cond_5
    const/4 v4, 0x0

    move-object v3, v4

    const/4 v4, 0x1

    const/16 v14, 0xe

    goto/16 :goto_2

    :cond_6
    move-object v4, v3

    move-object v3, v4

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2083
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    return-void
.end method

.method public static checkIfAnyFemaleMarriedMembersExists(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 2088
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2089
    const-string v1, "loopCounterForWifeMembers"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2090
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2094
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2095
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2096
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_2

    .line 2098
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    const/16 v3, 0x2711

    invoke-static {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2099
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2100
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHusbandWifeRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2101
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionTypeView(Ljava/lang/Object;)V

    .line 2102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionUIFrame(Ljava/lang/Object;)V

    .line 2103
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz p0, :cond_2

    const/4 v2, -0x1

    .line 2105
    invoke-virtual {p0, v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2108
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2091
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2092
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static checkIfBloodGroupNegative([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 128
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "O-"

    const-string v1, "AB-"

    const-string v2, "A-"

    const-string v3, "B-"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static checkIfBloodGroupPositive([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 149
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "O+"

    const-string v1, "AB+"

    const-string v2, "A+"

    const-string v3, "B+"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static checkIfIsFemale([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 3105
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "gender"

    .line 3108
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    .line 3106
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3105
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3111
    const-string v0, "F"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3112
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3113
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 3115
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3116
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkIfLmpIsAvailable(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 1814
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "lastLmp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1816
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1817
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 1819
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1820
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkIfThirdTrimester(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 1881
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "lmpDate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1882
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1883
    new-instance v2, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1884
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, -0x6

    .line 1885
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1886
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1888
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 1890
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1891
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 1894
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1895
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkLoop(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 304
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    :cond_2
    const-string v0, "0"

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static checkLoopBakCount([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 324
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne v0, p0, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 335
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_3

    .line 336
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static checkMemberState([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 2196
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_b

    .line 2197
    aget-object v0, p0, v1

    .line 2199
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2200
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 2202
    :cond_0
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2204
    :goto_0
    const-string v3, "U"

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 2205
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_1
    const/4 v2, -0x1

    goto :goto_2

    :sswitch_0
    const-string v2, "VN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "V"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    const-string v2, "N"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 2243
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2244
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2234
    :pswitch_0
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2235
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2236
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2238
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2239
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2216
    :pswitch_1
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2217
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2218
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2220
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2221
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2207
    :pswitch_2
    const-string p0, "com.argusoft.imtecho.member.state.unverified"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 2208
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2209
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2211
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2212
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2225
    :pswitch_3
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 2226
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2227
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2229
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2230
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_3

    .line 2248
    :cond_9
    aget-object p0, p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2249
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2250
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_3

    .line 2252
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2253
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_3

    .line 2257
    :cond_b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2258
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_3
        0x55 -> :sswitch_2
        0x56 -> :sswitch_1
        0xab8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkMisoprostol(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 2370
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "deliveryPlace"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2371
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "healthInfrastructureType"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2372
    const-string v2, "HOME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    const-string v0, "Sub Center"

    .line 2373
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2374
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2375
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 2377
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2378
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkNewFamily(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2263
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v0, :cond_0

    .line 2264
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2265
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 2267
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2268
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkPretermBirth(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 1411
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "deliveryDate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1412
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "lmpDate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1414
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1415
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1422
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1423
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xee

    const/4 v7, 0x5

    .line 1424
    invoke-virtual {v2, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 1426
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xa8

    .line 1427
    invoke-virtual {v3, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 1428
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1430
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-lez v2, :cond_1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    .line 1431
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 1434
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1417
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void
.end method

.method public static checkProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 651
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 653
    array-length v0, p0

    if-le v0, v1, :cond_1

    aget-object v0, p0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 654
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "null"

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "N/A"

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Not Applicable"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 660
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 661
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p0, :cond_1

    .line 663
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkReferal([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 3191
    new-instance p0, Ljava/util/HashSet;

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditions:Ljava/util/Set;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3192
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3193
    new-instance p0, Ljava/util/HashSet;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditionsChild:Ljava/util/Set;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3194
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3195
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3196
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 3198
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3199
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 3202
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3203
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkString([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 675
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 677
    array-length v0, p0

    if-le v0, v1, :cond_2

    aget-object v0, p0, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 679
    aget-object v0, p0, v1

    .line 682
    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 683
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v1

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 685
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 686
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    if-eqz p0, :cond_2

    .line 688
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 689
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static checkWeight([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 696
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 698
    aget-object v0, p0, v1

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 699
    aget-object v0, p0, v1

    const-string v4, "\\+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 702
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 703
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 707
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    .line 708
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 711
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 715
    :cond_1
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 717
    aget-object v0, p0, v1

    .line 720
    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 721
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 725
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_3

    .line 726
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 729
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static clearScannedAadharDetails([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 14

    .line 1041
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "aadharScanned"

    .line 1042
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1043
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "aadharAgreement"

    .line 1044
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1046
    const-string v2, "2"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_8

    .line 1047
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1054
    :cond_1
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    .line 1055
    aget-object p0, p0, v2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1056
    array-length v0, p0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 1057
    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1058
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1059
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    const/16 v4, 0x11

    const/16 p0, 0x6a5

    .line 1063
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    const-string v6, "Select date"

    const/16 v7, 0xc

    const/16 v8, 0x3e8

    const-string v9, "Enter Aadhar Number"

    const-string v10, "dob"

    const-string v11, "aadharNumber"

    const/4 v12, 0x0

    if-lez v5, :cond_5

    .line 1064
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    invoke-static {v0, v5}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    .line 1068
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v4

    .line 1069
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    .line 1071
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1072
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1073
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p1, :cond_3

    .line 1076
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1077
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1078
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1079
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1080
    invoke-virtual {v10}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v11

    .line 1081
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1082
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v10, v9, v8, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 1084
    invoke-virtual {v1, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1085
    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1086
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1087
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1088
    invoke-virtual {p1, v12}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 1092
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 1093
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1094
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1095
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p0, :cond_8

    .line 1099
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1100
    const-string p1, "Date not yet selected"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_8

    .line 1102
    invoke-virtual {v0, v12}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1106
    :cond_5
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    invoke-static {v0, v5}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    .line 1110
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v4

    .line 1111
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    .line 1113
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1114
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1115
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p1, :cond_6

    .line 1118
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1119
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1120
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1121
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1122
    invoke-virtual {v10}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v11

    .line 1123
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1124
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    .line 1125
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1124
    invoke-static {v10, v9, v8, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 1126
    invoke-virtual {v1, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1127
    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1128
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1129
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1130
    invoke-virtual {p1, v12}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 1134
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 1135
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1136
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1137
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz p0, :cond_8

    .line 1141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1142
    const-string p1, "Not available"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_8

    .line 1144
    invoke-virtual {v0, v12}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private static coloredLine(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 3

    const/4 v0, -0x3

    .line 2484
    const-string v1, ")"

    if-ge p1, v0, :cond_0

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Severe Malnutrition (SD "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2486
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    .line 2487
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$color;->pregnantWomenTextColor:I

    .line 2488
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-gt p1, v0, :cond_1

    .line 2490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Moderate Malnutrition (SD "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2491
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    .line 2492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$color;->yellow:I

    .line 2493
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 2495
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Normal (SD "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2496
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    .line 2497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    .line 2498
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2502
    :goto_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2503
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x21

    const/4 v2, 0x0

    .line 2503
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static compareDate([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 344
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 348
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 349
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 351
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 352
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 353
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 354
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static compareDiseaseCount(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 280
    const-string v0, "DefaultLoop"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 281
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIgnoreLoop(Z)V

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIgnoreNextQueLoop(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    .line 288
    :cond_1
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 290
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    :cond_2
    const-string v2, "1"

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static compareProperties([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 3209
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 3210
    aget-object v1, p0, v0

    .line 3211
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object v4, p0, v3

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3212
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v5, 0x3

    aget-object p0, p0, v5

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3214
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    .line 3218
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3219
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3222
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "ls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "le"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "gr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "ge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3236
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid comparison operator: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ge v2, p0, :cond_4

    goto :goto_2

    :pswitch_1
    if-gt v2, p0, :cond_4

    goto :goto_2

    :pswitch_2
    if-le v2, p0, :cond_4

    goto :goto_2

    :pswitch_3
    if-lt v2, p0, :cond_4

    .line 3240
    :goto_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xcde -> :sswitch_3
        0xceb -> :sswitch_2
        0xd79 -> :sswitch_1
        0xd87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static contactGynecologist()V
    .locals 5

    .line 2273
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "memberStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2274
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "notificationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2276
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->retrieveNotificationById(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/NotificationBean;

    move-result-object v0

    .line 2277
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getCustomField()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2278
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2279
    new-instance v0, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil$1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil$1;-><init>()V

    .line 2285
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    const-string v3, "The women should be referred to Gynecologist."

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    sput-object v1, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2288
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static contains([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 12

    .line 440
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 442
    aget-object v0, p0, v1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 444
    aget-object v0, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v0, v7

    .line 448
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v8, v3

    goto :goto_1

    :cond_0
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 447
    :goto_1
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 450
    :cond_1
    aget-object p0, p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 451
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 454
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 457
    :cond_3
    aget-object v0, p0, v1

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ","

    const-string v6, "\\+"

    if-eqz v0, :cond_d

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    aget-object v7, p0, v1

    const-string v8, "\\*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 461
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 463
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v10, v3

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 462
    :goto_3
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 466
    :cond_5
    aget-object v3, p0, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 467
    aget-object p0, p0, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    array-length p0, p0

    invoke-interface {v4, v5, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 469
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 470
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 471
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 472
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 473
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p0, 0x1

    goto :goto_4

    :cond_7
    const/4 p0, 0x0

    :goto_4
    if-eqz p0, :cond_8

    .line 479
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 482
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 486
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 490
    :cond_a
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 493
    aget-object p0, p0, v4

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 494
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 497
    :cond_b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 498
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 501
    :cond_c
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 505
    :cond_d
    aget-object v0, p0, v1

    const-string v7, "~"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 507
    aget-object v0, p0, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 509
    array-length v2, p0

    if-le v2, v4, :cond_f

    .line 510
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_5
    if-ge v3, v2, :cond_10

    aget-object v7, v0, v3

    .line 511
    aget-object v8, p0, v4

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v6, 0x0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    const/4 v6, 0x1

    :cond_10
    if-eqz v6, :cond_11

    .line 517
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 520
    :cond_11
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 523
    :cond_12
    aget-object v0, p0, v1

    const-string v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v8, "+"

    if-eqz v0, :cond_16

    .line 525
    aget-object v0, p0, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 527
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v7, v0, v1

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v7, v0, v5

    .line 528
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 529
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    .line 532
    :cond_13
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v7, v0, v5

    .line 531
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_6

    .line 532
    :cond_14
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, v0, v5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_6
    move-object v0, v3

    .line 534
    :goto_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 536
    aget-object v2, p0, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 537
    aget-object p0, p0, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 538
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_15

    .line 539
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 540
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 541
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 543
    :cond_15
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 549
    :cond_16
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    aget-object v3, p0, v4

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 551
    aget-object p0, p0, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    array-length p0, p0

    invoke-interface {v3, v5, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_17

    .line 553
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 554
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 557
    :cond_17
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 558
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_18
    if-eqz v0, :cond_1a

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    array-length v0, v0

    invoke-interface {v3, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 565
    aget-object p0, p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 566
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 567
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_8

    .line 569
    :cond_19
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 570
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    if-eqz v0, :cond_1b

    .line 573
    aget-object p0, p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 574
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_8

    .line 577
    :cond_1b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_1c
    :goto_8
    return-void
.end method

.method private static countSachets(Ljava/lang/Float;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2969
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2974
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2975
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2976
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getGivenRUTF()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2977
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getGivenRUTF()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2981
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x400c000000000000L    # 3.5

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x400f333333333333L    # 3.9

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_1

    rsub-int/lit8 v2, p2, 0xb

    goto/16 :goto_1

    .line 2983
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x401599999999999aL    # 5.4

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_2

    rsub-int/lit8 v2, p2, 0xe

    goto/16 :goto_1

    .line 2985
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x4016000000000000L    # 5.5

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x401b99999999999aL    # 6.9

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_3

    rsub-int/lit8 v2, p2, 0x12

    goto/16 :goto_1

    .line 2987
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40e00000    # 7.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x4020cccccccccccdL    # 8.4

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_4

    rsub-int/lit8 v2, p2, 0x15

    goto :goto_1

    .line 2989
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x4021000000000000L    # 8.5

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x4022cccccccccccdL    # 9.4

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_5

    rsub-int/lit8 v2, p2, 0x19

    goto :goto_1

    .line 2991
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x4023000000000000L    # 9.5

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x4024cccccccccccdL    # 10.4

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_6

    rsub-int/lit8 v2, p2, 0x1c

    goto :goto_1

    .line 2993
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x4025000000000000L    # 10.5

    cmpl-double p1, v0, v3

    if-ltz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v3, 0x4027cccccccccccdL    # 11.9

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_7

    rsub-int/lit8 v2, p2, 0x20

    goto :goto_1

    .line 2995
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p1, 0x41400000    # 12.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_8

    rsub-int/lit8 v2, p2, 0x23

    :cond_8
    :goto_1
    if-gez v2, :cond_9

    .line 2999
    const-string p0, "0"

    return-object p0

    :cond_9
    if-eqz v2, :cond_a

    .line 3001
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3004
    :cond_a
    const-string p0, "Not available"

    return-object p0
.end method

.method public static dateBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 588
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 590
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    if-eqz p0, :cond_1

    .line 593
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x0

    .line 597
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 598
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v3

    .line 602
    :goto_0
    const-string v2, "HiddenQuestionFormula"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    :goto_1
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "deliveryDate"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 606
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 607
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 608
    invoke-virtual {p0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 609
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 611
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static differenceInAge([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 3248
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "dob"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3249
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x2

    .line 3250
    aget-object v4, p0, v3

    const/4 v5, 0x3

    .line 3252
    aget-object p0, p0, v5

    const-string v5, "greaterthan"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v5, 0x0

    .line 3256
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3257
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3258
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3259
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDayOnGivenDate(Ljava/lang/Long;Ljava/lang/Long;)[I

    move-result-object v0

    .line 3260
    aget v1, v0, v5

    mul-int/lit16 v1, v1, 0x16d

    aget v6, v0, v2

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v1, v6

    aget v0, v0, v3

    add-int/2addr v1, v0

    if-eqz p0, :cond_0

    if-lt v1, v4, :cond_1

    goto :goto_0

    :cond_0
    if-ge v1, v4, :cond_1

    .line 3265
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 3269
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3275
    const-string v0, "HiddenQuestionFormula"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3277
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void
.end method

.method public static displayHighRiskData([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 3129
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 3133
    :cond_0
    array-length v0, p0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 3134
    aget-object v0, p0, v2

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getHighRiskStringFromList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3136
    :cond_1
    const-string v0, " "

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getHighRiskStringFromList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3138
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3139
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 3140
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3139
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    :cond_2
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3144
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3145
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    .line 3147
    :cond_3
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-nez p0, :cond_4

    return-void

    .line 3151
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_5

    return-void

    .line 3155
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v1

    .line 3156
    const-string v2, "No high risks were identified in this visit"

    if-nez v1, :cond_6

    .line 3157
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 3158
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 3160
    :cond_6
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditionsChild:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3161
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3162
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3164
    :cond_7
    const-string v2, "Following high risks have been identified in the visit"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3165
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3167
    :goto_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void
.end method

.method private static formatSd(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 2516
    const-string p0, "NA"

    return-object p0

    .line 2518
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p0, :cond_1

    const-string v1, "+"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 3425
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3426
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getFullName([Ljava/lang/String;)V
    .locals 6

    .line 3121
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3122
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object v4, p0, v3

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3123
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v5, 0x3

    aget-object p0, p0, v5

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3124
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    aput-object p0, v4, v3

    const-string p0, "%s %s %s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3125
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "fullNameOfNewMember"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getHighRiskStringFromList(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3172
    const-string v0, "child"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3173
    new-instance p0, Ljava/util/HashSet;

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditionsChild:Ljava/util/Set;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 3175
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditions:Ljava/util/Set;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3178
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3179
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3181
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3186
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIndex(Ljava/lang/String;)I
    .locals 0

    .line 1403
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static getQuestion(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 1

    .line 3421
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method private static getWebView(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/webkit/WebView;
    .locals 2

    .line 3475
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 3477
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3478
    check-cast p0, Landroid/webkit/WebView;

    goto :goto_1

    .line 3479
    :cond_0
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 3480
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 3481
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3482
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 3483
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static identifyHighRiskAdolescent([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    .line 1564
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 1565
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    .line 1566
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    .line 1567
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    .line 1568
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1570
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1571
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1572
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1573
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1574
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1576
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 1578
    const-string v5, "haemoglobinAnswer"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 1581
    const-string v0, "bmiAnswer"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    .line 1584
    const-string v0, "isHavingIssueWithMenstruation"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    .line 1587
    const-string v0, "issueWithMenstruationAnswer"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-interface {v0, v4}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForAdolescent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_9

    .line 1593
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 1595
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v2

    .line 1596
    const-string v3, "No risks found"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 1606
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1608
    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1609
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1611
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1597
    :cond_6
    :goto_1
    const-string v3, "No high risks were identified in this visit"

    if-eqz v2, :cond_7

    .line 1598
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1600
    :cond_7
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1601
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1603
    :goto_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1614
    :cond_8
    :goto_3
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1615
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "highRiskFactor"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public static identifyHighRiskAnc([Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    .line 1471
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 1472
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    .line 1473
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    .line 1474
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    .line 1475
    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    .line 1476
    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x7

    .line 1477
    aget-object v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    .line 1478
    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x9

    .line 1479
    aget-object v8, p0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1482
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1483
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1484
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1485
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1486
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1487
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1488
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1489
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1490
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1493
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 1495
    const-string v10, "weightAnswer"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 1498
    const-string v0, "haemoglobinAnswer"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    .line 1501
    const-string v0, "bpAnswer"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    .line 1504
    const-string v0, "dangerousSignAnswer"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v6, :cond_4

    .line 1507
    const-string v0, "urineAlbuminAnswer"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v7, :cond_5

    .line 1510
    const-string v0, "urineSugarAnswer"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v8, :cond_6

    .line 1513
    const-string v0, "sickleCellTestAnswer"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v4, :cond_7

    .line 1516
    const-string v0, "otherDangerousSignAnswer"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_7
    array-length v0, p0

    const/16 v1, 0xa

    if-le v0, v1, :cond_9

    .line 1521
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    .line 1522
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1524
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1525
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_8

    .line 1528
    const-string v1, "previousComplicationsAnswer"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz p0, :cond_9

    .line 1531
    const-string v0, "otherPreviousComplicationsAnswer"

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    :cond_9
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-interface {p0, v9}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForRchAnc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz v5, :cond_e

    .line 1538
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 1540
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v1

    .line 1541
    const-string v2, "No risks found"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1542
    const-string v2, "No high risks were identified in this visit"

    if-eqz v1, :cond_a

    .line 1543
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1545
    :cond_a
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 1546
    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1548
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    .line 1551
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1553
    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 1554
    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1556
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    :cond_d
    :goto_2
    invoke-virtual {v5, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public static identifyHighRiskNPCB([Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    if-eqz v0, :cond_d

    .line 3327
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 3336
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getQuestion(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v4

    .line 3338
    array-length v5, v0

    if-le v5, v2, :cond_1

    .line 3339
    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getQuestion(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 3341
    :goto_0
    array-length v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 3342
    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getQuestion(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    .line 3353
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 3355
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3353
    const-string v6, "eyeProblems"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    const/16 v5, 0x22b9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-nez v0, :cond_4

    return-void

    .line 3363
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 3368
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3371
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/lang/String;

    move-result-object v4

    .line 3374
    const-string v6, "\n"

    const-string v7, ". "

    if-eqz v4, :cond_a

    const-string v8, "NONE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 3375
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3377
    array-length v9, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_1
    if-ge v11, v9, :cond_9

    aget-object v13, v4, v11

    .line 3378
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v17, v4

    const/4 v4, 0x1

    goto :goto_4

    .line 3382
    :cond_6
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "_"

    const-string v15, " "

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 3383
    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 3384
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3386
    array-length v3, v13

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v3, :cond_8

    move/from16 v16, v3

    aget-object v3, v13, v10

    .line 3387
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .line 3388
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 3389
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3390
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    move-object/from16 v17, v4

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_2

    :cond_8
    move-object/from16 v17, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v12, 0x1

    .line 3394
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3395
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3396
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v3

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v17

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    move v3, v12

    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    const/4 v3, 0x1

    .line 3402
    :goto_5
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "F"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v3, 0x1

    .line 3403
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3404
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Large letter visibility issue"

    .line 3405
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3406
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3410
    :cond_b
    const-string v4, "T"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3411
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3412
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3413
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Multiple letter visibility issue"

    .line 3414
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    .line 3345
    const-string v2, "HiddenQuestionFormula"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_6
    return-void
.end method

.method public static identifyHighRiskPncChild([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    const/4 v0, 0x2

    .line 1620
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    .line 1621
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    .line 1622
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1624
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1625
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    .line 1626
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v1

    .line 1627
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    .line 1630
    :cond_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1631
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1632
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 1637
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForChildRchPnc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1639
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForChildRchPnc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    return-void

    :cond_3
    if-nez p0, :cond_4

    .line 1648
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "displayMorbidityChild"

    .line 1649
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1648
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1652
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 1654
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v0

    .line 1655
    const-string v1, "No risks found"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1656
    const-string v1, "No high risks were identified in this visit"

    if-eqz v0, :cond_5

    .line 1657
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1659
    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1660
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1662
    :goto_1
    const-string p0, ""

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 1665
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1667
    :cond_7
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1668
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1670
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static identifyHighRiskPncMother([Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    .line 1678
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 1679
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1682
    array-length v2, p0

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 1683
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v4, p0

    goto :goto_0

    .line 1684
    :cond_0
    array-length v2, p0

    if-le v2, v5, :cond_1

    .line 1685
    aget-object v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1686
    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v6, v4

    move v4, p0

    move p0, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 1689
    :goto_1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1690
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1691
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1692
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 1695
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v3

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 1701
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1, p0}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForMotherRchPnc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1703
    :cond_3
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3, p0}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForMotherRchPnc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    return-void

    :cond_5
    if-eqz v2, :cond_a

    .line 1712
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 1714
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v0

    .line 1715
    const-string v1, "No risks found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1716
    const-string v1, "No high risks were identified in this visit"

    if-eqz v0, :cond_6

    .line 1717
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1719
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1720
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1722
    :goto_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    .line 1725
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1727
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1728
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1730
    :goto_5
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    :cond_9
    :goto_6
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public static identifyHighRiskWpdChild([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 1738
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1741
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 1742
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1744
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v1

    .line 1746
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    .line 1749
    :cond_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1750
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1754
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/RchHighRiskService;->identifyHighRiskForChildRchWpd(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 1761
    :cond_2
    const-string v3, "No risks found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "displayMorbidityChild"

    if-nez v3, :cond_6

    .line 1762
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz p0, :cond_5

    .line 1766
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 1768
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1770
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1772
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1773
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setInstructionsView(Landroid/widget/TextView;)V

    .line 1775
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1777
    :cond_4
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 1779
    :cond_5
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1780
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {v4, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1779
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1784
    :cond_6
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1785
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-static {v4, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1784
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static isCMAMFollowupsProblem([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 2667
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2668
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2669
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2670
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2671
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v2

    .line 2673
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 2676
    const-string v5, "NONE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 2677
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2678
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2679
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2680
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v4, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2681
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 2682
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    .line 2683
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2684
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, v1, p0

    if-nez p0, :cond_3

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2685
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2686
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static isDateBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 9

    .line 1252
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1254
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 1257
    :goto_0
    array-length v0, p0

    const/4 v5, 0x1

    if-le v0, v5, :cond_1

    .line 1258
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v6, p0, v5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1260
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1264
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1267
    array-length v0, p0

    const/4 v6, 0x3

    if-le v0, v6, :cond_6

    const/4 v0, 0x2

    .line 1268
    aget-object v7, p0, v0

    .line 1270
    aget-object p0, p0, v6

    const/4 v6, 0x0

    if-eqz p0, :cond_2

    .line 1271
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 1274
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 1275
    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1276
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "Y"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v1, "M"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v1, "D"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 1292
    :pswitch_0
    invoke-virtual {v8, v5, p0}, Ljava/util/Calendar;->add(II)V

    .line 1293
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p0, v0, v3

    if-lez p0, :cond_6

    .line 1294
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 1285
    :pswitch_1
    invoke-virtual {v8, v0, p0}, Ljava/util/Calendar;->add(II)V

    .line 1286
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p0, v0, v3

    if-lez p0, :cond_6

    .line 1287
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_2
    const/4 v0, 0x5

    .line 1278
    invoke-virtual {v8, v0, p0}, Ljava/util/Calendar;->add(II)V

    .line 1279
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p0, v0, v3

    if-lez p0, :cond_6

    .line 1280
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDateIn([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 1304
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1306
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 1312
    :cond_0
    array-length v2, p0

    if-le v2, v1, :cond_1

    .line 1313
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1315
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 1320
    :goto_0
    array-length v4, p0

    const/4 v5, 0x6

    if-le v4, v5, :cond_4

    const/4 v4, 0x5

    .line 1321
    aget-object v6, p0, v4

    if-eqz v6, :cond_3

    aget-object v6, p0, v5

    if-eqz v6, :cond_3

    .line 1322
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1325
    :try_start_0
    aget-object v5, p0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v5, 0x1

    .line 1329
    :goto_1
    array-length v6, v4

    if-le v6, v5, :cond_2

    .line 1330
    aget-object v0, v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    .line 1332
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    .line 1335
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    .line 1338
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1344
    :goto_2
    invoke-static {v4, v5, p0, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isDateIn(J[Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1345
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 1348
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static isDateOut([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 9

    .line 1354
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1356
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 1362
    :cond_0
    array-length v2, p0

    const-wide/16 v3, 0x0

    if-le v2, v1, :cond_1

    .line 1363
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v5, p0, v1

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1365
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 1371
    :goto_0
    :try_start_0
    array-length v2, p0

    const/4 v7, 0x6

    if-le v2, v7, :cond_4

    const/4 v2, 0x5

    .line 1372
    aget-object v8, p0, v2

    if-eqz v8, :cond_3

    aget-object v8, p0, v7

    if-eqz v8, :cond_3

    .line 1373
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1374
    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getIndex(Ljava/lang/String;)I

    move-result v7

    .line 1375
    array-length v8, v2

    if-le v8, v7, :cond_2

    .line 1376
    aget-object v0, v2, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 1378
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 1381
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 1384
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v3, v2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1387
    const-string v2, "HiddenQuestionFormula"

    const/4 v7, 0x0

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    :goto_2
    invoke-static {v3, v4, p0, v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isDateOut(J[Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1392
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 1395
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static isDateOutside([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 11

    .line 1207
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1208
    array-length v1, p0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 1209
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1212
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1215
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 1217
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 1219
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_0
    const/4 v0, 0x2

    .line 1222
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x3

    .line 1223
    aget-object v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    .line 1224
    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1226
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1229
    aget-object v8, p0, v9

    const-string v10, "Sub"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1230
    invoke-static {v1, v2, v0, v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDateMinus(JIII)J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-gtz p0, :cond_2

    cmp-long p0, v4, v1

    if-lez p0, :cond_6

    .line 1232
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 1235
    :cond_3
    aget-object p0, p0, v9

    const-string v8, "Add"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1236
    invoke-static {v1, v2, v0, v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDatePlus(JIII)J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-ltz p0, :cond_4

    cmp-long p0, v4, v1

    if-gez p0, :cond_6

    .line 1238
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 1244
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static isDateWithin([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 11

    const/4 v0, 0x1

    .line 1155
    :try_start_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1157
    array-length v2, p0

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 1158
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x5

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1161
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1164
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v1, :cond_1

    .line 1166
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    .line 1168
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :goto_0
    const/4 v1, 0x2

    .line 1171
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x3

    .line 1172
    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    .line 1173
    aget-object v8, p0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1175
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1178
    aget-object v9, p0, v0

    const-string v10, "Sub"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1179
    invoke-static {v2, v3, v1, v7, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDateMinus(JIII)J

    move-result-wide v1

    cmp-long p0, v1, v5

    if-gez p0, :cond_4

    .line 1181
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1184
    :cond_2
    aget-object p0, p0, v0

    const-string v9, "Add"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1185
    invoke-static {v2, v3, v1, v7, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDatePlus(JIII)J

    move-result-wide v1

    cmp-long p0, v1, v5

    if-lez p0, :cond_4

    .line 1187
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 1193
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1198
    const-string v1, "HiddenQuestionFormula"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static isFamilyHeadIdentified(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 8

    .line 2753
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2754
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2756
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyFound"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2757
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2758
    sget v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2759
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2760
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2762
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2763
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    const-string v5, "familyHeadFlag"

    invoke-static {v5, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2762
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2765
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2766
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2767
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2770
    :goto_0
    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    add-int/2addr v4, v1

    if-ge v0, v4, :cond_4

    .line 2771
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2772
    invoke-static {v5, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2771
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2773
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "memberStatus"

    .line 2774
    invoke-static {v7, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2773
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 2776
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    if-nez v6, :cond_3

    if-eqz v4, :cond_3

    .line 2777
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2783
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2784
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static isMobileNumberVerfied([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 2844
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2845
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2847
    array-length v0, p0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    .line 2849
    :try_start_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    .line 2850
    aget-object v1, p0, v1

    .line 2851
    aget-object p0, p0, v2

    if-lez v0, :cond_0

    .line 2853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2856
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2857
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 2859
    const-string v1, "F/"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 2862
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2863
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2864
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2865
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2866
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2867
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2871
    const-string p1, "HiddenQuestionFormula"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static isMobileNumberVerificationBlocked(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2877
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2878
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2880
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2882
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isNull([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 964
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 965
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 969
    :cond_0
    aget-object p0, p0, v1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    .line 971
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    if-lez v5, :cond_1

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 975
    :cond_1
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 979
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 982
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static isUserOnline(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2834
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2835
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2837
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2838
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2839
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static lessThan([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 217
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    .line 220
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 222
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string v0, "0"

    :cond_1
    const/4 v2, 0x0

    .line 227
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 232
    :try_start_1
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gt v0, p0, :cond_2

    .line 233
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 240
    const-string p1, "HiddenQuestionFormula"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static loopCheckAgeBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 10

    .line 761
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    .line 762
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 763
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 765
    array-length v5, p0

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-lt v5, v6, :cond_0

    .line 766
    aget-object v1, p0, v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    .line 768
    :goto_0
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "dob"

    .line 769
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v9

    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 768
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 772
    array-length v8, p0

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 773
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v6

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    :cond_1
    if-eqz v7, :cond_2

    .line 776
    new-instance p0, Ljava/util/Date;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    .line 778
    :cond_2
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    :goto_1
    if-eqz v5, :cond_a

    .line 782
    new-instance v6, Ljava/util/Date;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 784
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 785
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 786
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v7, 0x0

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 788
    const-string p0, "Y"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_2

    .line 798
    :cond_3
    const-string p0, "M"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    neg-int p0, v2

    .line 799
    invoke-virtual {v6, v3, p0}, Ljava/util/Calendar;->add(II)V

    .line 800
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 801
    invoke-virtual {v6, v3, v2}, Ljava/util/Calendar;->add(II)V

    neg-int v1, v4

    .line 802
    invoke-virtual {v6, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 803
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 804
    invoke-virtual {v5, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 805
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 808
    :cond_5
    const-string p0, "D"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    neg-int p0, v2

    .line 809
    invoke-virtual {v6, v9, p0}, Ljava/util/Calendar;->add(II)V

    .line 810
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 811
    invoke-virtual {v6, v9, v2}, Ljava/util/Calendar;->add(II)V

    neg-int v1, v4

    .line 812
    invoke-virtual {v6, v9, v1}, Ljava/util/Calendar;->add(II)V

    .line 813
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 814
    invoke-virtual {v5, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 815
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    :goto_2
    neg-int p0, v2

    .line 789
    invoke-virtual {v6, v0, p0}, Ljava/util/Calendar;->add(II)V

    .line 790
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 791
    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->add(II)V

    neg-int v1, v4

    .line 792
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 793
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 794
    invoke-virtual {v5, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v5, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 795
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 820
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 824
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public static loopContains([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 748
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_0

    .line 750
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 752
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 754
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 755
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static makePrescriptionCard([Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_4

    .line 3432
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 3438
    :cond_0
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    const/16 v2, 0x22b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 3440
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3441
    array-length v3, p0

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 3442
    :goto_0
    array-length v3, p0

    const/4 v5, 0x3

    if-le v3, v5, :cond_2

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v5, p0, v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 3443
    :goto_1
    array-length v5, p0

    const/4 v6, 0x4

    if-le v5, v6, :cond_3

    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v6

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    .line 3445
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3447
    const-string v5, "Near Vision RE"

    invoke-static {p0, v5, v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->appendVisionData(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    const-string v2, "Near Vision LE"

    invoke-static {p0, v2, v1}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->appendVisionData(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    const-string v1, "Distant Vision RE"

    invoke-static {p0, v1, v3}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->appendVisionData(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    const-string v1, "Distant Vision LE"

    invoke-static {p0, v1, v4}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->appendVisionData(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "|"

    const-string v2, " | "

    .line 3453
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3454
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3456
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3457
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->formatVisionDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3458
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "prescriptionCard"

    invoke-interface {p0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 3461
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getWebView(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3463
    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3469
    const-string v0, "HiddenQuestionFormula"

    const-string v1, "Error generating prescription card"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public static membersCountCheck(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 738
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 739
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static pncCheckTemp([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 190
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    .line 191
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 195
    const-string v3, "-"

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 202
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->fahrenheitToCelsius(F)F

    move-result v0

    .line 203
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x3

    .line 204
    aget-object p0, p0, v2

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    const-string p1, "HiddenQuestionFormula"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static putRemainingVaccines([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 1825
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1826
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "immunisationGivenString"

    .line 1827
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1826
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1830
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1832
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1833
    array-length v3, p0

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 1834
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v4

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1836
    new-instance v2, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    :cond_0
    if-eqz v1, :cond_3

    .line 1840
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1841
    new-instance p0, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1842
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1843
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1854
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "remainingVaccines"

    .line 1855
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1856
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1854
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-nez v0, :cond_1

    .line 1859
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 1861
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1863
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1864
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1866
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getImmunisationSelectionComponent()Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    move-result-object v0

    .line 1867
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1869
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->reSet(Ljava/util/List;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 1872
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->resetComponent()V

    :cond_3
    return-void
.end method

.method public static reapplyOptionalIfUnder18()V
    .locals 2

    .line 3075
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 3076
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->relaxMandatoryIfUnder18(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeMemberCountForRemovedMember()V
    .locals 4

    .line 1986
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1987
    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    .line 1988
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1989
    const-string v3, "loopCounterForAliveMembers"

    invoke-static {v1, v3, v0, v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->updateMemberCountSetTillLastLoopCount(ILjava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 1990
    const-string v3, "loopCounterForFemaleMarriedMembers"

    invoke-static {v1, v3, v0, v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->updateMemberCountSetTillLastLoopCount(ILjava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 1991
    const-string v3, "loopCounterForWifeMembers"

    invoke-static {v1, v3, v0, v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->updateMemberCountSetTillLastLoopCount(ILjava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 1992
    const-string v3, "loopCounterForMaleMarriedMembers"

    invoke-static {v1, v3, v0, v2}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->updateMemberCountSetTillLastLoopCount(ILjava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 1993
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static resetProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2383
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2384
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 2385
    array-length p1, p0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    aget-object p1, p0, v0

    if-eqz p1, :cond_0

    .line 2387
    const-string v1, "husbandsBloodGroup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2388
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setAgePerDateSelected([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 623
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    const-string v1, "dob"

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    .line 625
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 627
    :cond_0
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 628
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 630
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_2

    .line 632
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 635
    new-instance v1, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDayOnGivenDate(Ljava/lang/Long;Ljava/lang/Long;)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 636
    aget v1, p1, v1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-static {v1, v2, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 640
    :cond_1
    const-string p1, "Date not yet selected"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 646
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "ageAsPerDate"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static setAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 434
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setAreaQuestionVisibility([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 9

    const/4 v0, 0x1

    .line 900
    aget-object v1, p0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 901
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 903
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 904
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 906
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 907
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getLocationLevel()Ljava/util/Map;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 908
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v5, v3}, Lcom/argusoft/sewa/android/app/core/SewaService;->retrieveLocationByLevel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 909
    array-length v3, p0

    const/4 v5, 0x2

    if-le v3, v5, :cond_2

    aget-object v3, p0, v5

    if-eqz v3, :cond_2

    const-string v5, "filterRequired"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 910
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "locationId"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 911
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 912
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 913
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getParent()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 914
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 918
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 920
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 921
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    .line 922
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setIdOfValue(I)V

    .line 923
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    .line 924
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    :cond_3
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    aget-object p0, p0, v0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 931
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static setChildGrowthChartData([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0

    return-void
.end method

.method public static setDefaultGenderBasedOnRelationWithHOF(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 2792
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyHeadFlag"

    .line 2794
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    .line 2793
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2792
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 2795
    const-string v2, "relationWithHOF"

    const-string v3, "ans12"

    if-eqz v0, :cond_2

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2797
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2798
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2799
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2798
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2801
    const-string v5, "HUSBAND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2802
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2804
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    .line 2803
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    .line 2802
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2805
    :cond_0
    const-string v5, "WIFE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2806
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2808
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    .line 2807
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2806
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2813
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    .line 2812
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2814
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2816
    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->MALE_RELATION:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2817
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2820
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    .line 2818
    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2821
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 2817
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2822
    :cond_3
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FEMALE_RELATION:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2823
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2826
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    .line 2824
    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2827
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 2823
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public static setOTPBasedVerificationComponent(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 2887
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2889
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-nez v0, :cond_0

    return-void

    .line 2895
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 2897
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->mobileText:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2899
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    .line 2900
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    if-lez v4, :cond_1

    .line 2901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2904
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2906
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2908
    const-string v4, "F/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2910
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2911
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_2

    .line 2912
    sget p0, Lcom/argusoft/sewa/android/app/R$id;->resetBtn:I

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 2913
    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    const/4 v4, 0x1

    .line 2914
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 2915
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    const/4 v4, 0x0

    .line 2916
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 2917
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    .line 2919
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2920
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    const/4 p0, 0x0

    .line 2921
    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static setOnsiteBeneficiaryDisplay(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 3026
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "firstName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3027
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "middleName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3028
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "lastName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 3031
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3032
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    :cond_0
    const-string p0, " "

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3035
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3036
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v1, :cond_4

    .line 3040
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3041
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 3042
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3048
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3049
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "nameOfBeneficiary"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "memberName"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "nameForLog"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3054
    :cond_5
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "dob"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 3057
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3058
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dobDisplay"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    .line 3059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 3058
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3060
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3062
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "ageDisplay"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3065
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid onsite dob value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HiddenQuestionFormula"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public static setReverseFlag([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 4

    .line 246
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 251
    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    const-string v2, "T"

    .line 256
    :cond_0
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static setSchoolType(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 3008
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3010
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_0

    .line 3011
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3012
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v0, 0x2715

    .line 3013
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3015
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public static setTrue([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 364
    array-length v2, v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x240c8400

    const-string v8, "/"

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x4

    const-string v12, "F"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v2, v3, :cond_4

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 368
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, v0, v14

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v9, v0, v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 370
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v10, v0, v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 372
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v3, :cond_1

    .line 373
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v9, :cond_1

    .line 374
    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 377
    aget-object v9, v0, v11

    if-eqz v9, :cond_2

    .line 378
    invoke-static {v2, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 379
    aget-object v2, v2, v14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    mul-long v10, v10, v6

    sub-long/2addr v15, v10

    cmp-long v0, v8, v4

    if-eqz v0, :cond_3

    cmp-long v0, v8, v15

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v13, v3

    :cond_3
    :goto_2
    if-nez v13, :cond_9

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 389
    :cond_4
    array-length v2, v0

    if-ne v2, v11, :cond_9

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 393
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, v0, v14

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v9, v0, v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 395
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v3, :cond_6

    const-string v9, "1"

    .line 396
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    .line 399
    aget-object v9, v0, v10

    if-eqz v9, :cond_8

    .line 400
    invoke-static {v2, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 401
    aget-object v2, v2, v14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v13, v0

    mul-long v13, v13, v6

    sub-long/2addr v11, v13

    cmp-long v0, v8, v4

    if-eqz v0, :cond_7

    cmp-long v0, v8, v11

    if-lez v0, :cond_8

    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    move v13, v3

    :goto_5
    if-nez v13, :cond_9

    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public static setmobiditylist([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 416
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 417
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v1

    .line 418
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 422
    :cond_0
    sget-boolean p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ismapUpdate:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 423
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 424
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;

    .line 427
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getListOfLIC()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->resetList(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static showAlertIfYesInAny([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V
    .locals 7

    .line 2641
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2644
    :cond_0
    array-length p2, p0

    const/4 v0, 0x1

    if-le p2, v0, :cond_5

    .line 2645
    :goto_0
    array-length p2, p0

    if-ge v0, p2, :cond_5

    .line 2646
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v0

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v0

    .line 2647
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "T"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v0

    .line 2648
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2649
    :cond_1
    new-instance v5, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil$2;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil$2;-><init>()V

    .line 2655
    sget-object p0, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_3

    .line 2656
    :cond_2
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    .line 2657
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    sput-object p0, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2658
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static updateCurrentGravida([Ljava/lang/String;)V
    .locals 9

    .line 1440
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1441
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_4

    .line 1442
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1443
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1446
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "loopCount"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1448
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1451
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1452
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v7, v2, v5

    .line 1453
    const-string v8, "ADDNEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :cond_3
    add-int/2addr v6, v0

    .line 1460
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "currentGravida"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    const/4 v2, 0x3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_4

    .line 1463
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "%d"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static updateMemberCountSetTillLastLoopCount(ILjava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 1997
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1998
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1999
    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2001
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2002
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, p0, :cond_0

    .line 2003
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2007
    :cond_1
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static urineTest([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5

    .line 85
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 87
    const-string v2, "-"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 92
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 95
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v2, v4, :cond_0

    aget-object v0, v0, v3

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le v0, p0, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    const-string p1, "HiddenQuestionFormula"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static visionCheckFormula([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 7

    .line 3502
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3503
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3504
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3505
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v5, 0x4

    aget-object p0, p0, v5

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3508
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3509
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 3512
    const-string v1, "N/9"

    const-string v4, "N/6"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3513
    const-string v4, "6/9"

    const-string v5, "6/6"

    const-string v6, "6/12"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 3516
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    .line 3517
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    .line 3518
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    .line 3519
    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 3521
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 3522
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
