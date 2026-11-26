.class public Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;
.super Ljava/lang/Object;
.source "FormMetaDataUtil.java"


# static fields
.field private static invalidStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

.field public listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ListValueBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field public schoolBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    .line 111
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ARCHIVED_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    sget-object v0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_DEAD_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildEyeProblemsSummary(Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Ljava/lang/String;
    .locals 7

    .line 2870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2872
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSymptomsExperiencedNew()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2873
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2874
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2875
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2876
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "NONE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2877
    const-string v5, "_"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2882
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIsBigEVisible()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2883
    const-string v1, "Big letter visibility issue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2885
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAreThreeEVisible()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2886
    const-string p1, "Multiple letter visibility issue"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2889
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2890
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2891
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 2892
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    :cond_4
    const-string v2, "\u2022 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2896
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkIfMotherWasPregnantWithinLast3Years(Lcom/argusoft/sewa/android/app/model/MemberBean;)Z
    .locals 6

    .line 2233
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2236
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateYearsBetweenDates(JJ)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static formatVisionDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    .line 2900
    const-string v1, ""

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_b

    .line 2907
    :cond_0
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2908
    array-length v2, v0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v3, v0, v4

    move-object/from16 v21, v0

    .line 2909
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2910
    array-length v3, v0

    move/from16 v22, v2

    const/4 v2, 0x2

    if-lt v3, v2, :cond_4

    const/4 v2, 0x0

    .line 2911
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 2912
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2914
    const-string v3, "SPH"

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    .line 2915
    const-string v3, "CYL"

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    .line 2916
    const-string v3, "AXIS"

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    .line 2917
    const-string v3, "VISION"

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2919
    const-string v3, "Near Vision RE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v16, v0

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    goto :goto_1

    .line 2921
    :cond_1
    const-string v3, "Near Vision LE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v20, v0

    move-object/from16 v17, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    goto :goto_1

    .line 2923
    :cond_2
    const-string v3, "Distant Vision RE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v8, v0

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    goto :goto_1

    .line 2925
    :cond_3
    const-string v3, "Distant Vision LE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v12, v0

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    move/from16 v2, v22

    goto/16 :goto_0

    .line 2932
    :cond_5
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameForLog"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2933
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2934
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2935
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2937
    :cond_6
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2938
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 2942
    :cond_8
    :goto_2
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ageDisplay"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2943
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v2, v1

    .line 2947
    :goto_3
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentDate"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v21, v1

    const-string v1, "dd/MM/yyyy"

    if-eqz v3, :cond_a

    .line 2949
    :try_start_0
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v15

    .line 2950
    :try_start_1
    new-instance v15, Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v23, v14

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v15, v1, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_0
    move-object/from16 v23, v14

    goto :goto_4

    :catch_1
    move-object/from16 v23, v14

    move-object/from16 v22, v15

    :catch_2
    :goto_4
    nop

    goto :goto_5

    :cond_a
    move-object/from16 v23, v14

    move-object/from16 v22, v15

    :goto_5
    move-object/from16 v3, v21

    .line 2953
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2954
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2958
    :cond_b
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "uniqueHealthId"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2959
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-object/from16 v1, v21

    .line 2962
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style>body { font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #f5f5f5; margin: 0; padding: 10px; padding-bottom: 180px; }.card-container { display: block; }.card-front { margin-bottom: 15px; border: 1px solid #d3d3d3; background-color: #ffffff; position: relative; border-radius: 8px; box-shadow: 0 2px 6px rgba(0,0,0,0.1); overflow: hidden; }.card-back { margin-bottom: 50px; border: 1px solid #d3d3d3; background-color: #ffffff; position: relative; border-radius: 8px; box-shadow: 0 2px 6px rgba(0,0,0,0.1); overflow: hidden; }.bg-pattern-top { position: absolute; top: -50px; left: -50px; width: 150px; height: 150px; background: radial-gradient(circle, rgba(0,92,169,0.1) 0%, transparent 70%); }.bg-pattern-bottom { position: absolute; bottom: -50px; right: -50px; width: 150px; height: 150px; background: radial-gradient(circle, rgba(0,92,169,0.1) 0%, transparent 70%); }.header-row { display: flex; justify-content: space-between; align-items: flex-start; padding: 15px 15px 5px; position: relative; z-index: 1; }.header-text { text-align: center; flex: 1; padding: 0 5px; }.form-group { display: flex; align-items: baseline; font-size: 13px; font-weight: bold; color: #333; margin-top: 10px; padding: 0 15px; position: relative; z-index: 1; }.form-label { margin-right: 10px; white-space: nowrap; }.form-value { flex: 1; border-bottom: 1px solid #666; font-weight: normal; color: #000; min-height: 18px; }table { width: calc(100% - 30px); margin: 15px; border-collapse: collapse; text-align: center; border: 2px solid #009688; position: relative; z-index: 1; font-size: 11px; }th, td { border: 1px solid #009688; padding: 6px 3px; }.table-header th { font-weight: bold; color: #333; font-size: 12px; background-color: white; }.table-subheader th { font-weight: normal; color: #555; font-size: 10px; background-color: white; }.row-label { font-weight: bold; color: #333; text-align: left; padding-left: 6px; background-color: white; }td { background-color: white; }.blue-bar { background-color: #1565c0; color: white; text-align: center; padding: 8px; font-weight: bold; font-size: 13px; margin: 0 15px; position: relative; z-index: 1; }.footer-text { display: flex; justify-content: space-between; padding: 8px 15px 15px; font-size: 10px; color: #1565c0; font-weight: bold; position: relative; z-index: 1; }.card-back { background-color: #0b5394; padding: 15px; }.inner-card { background-color: #ffffff; border-radius: 12px; padding: 15px; position: relative; box-shadow: 0 2px 6px rgba(0,0,0,0.1); }.instructions-title { text-align: center; margin-bottom: 15px; margin-top: 15px; }.instructions-title span { background-color: #009688; color: white; padding: 6px 15px; border-radius: 15px; font-weight: bold; font-size: 14px; display: inline-block; }.instructions-list { width: 100%; border-collapse: separate; border-spacing: 0 8px; font-size: 12px; color: #333; line-height: 1.4; border: none; margin: 0; padding: 0; }.instructions-list td { border: none; padding: 0; background-color: transparent; text-align: left; }.instructions-list td:first-child { width: 20px; font-weight: bold; vertical-align: top; }@media print { body { padding: 0; margin: 0; } .card-container { gap: 0; } .card-front { margin-bottom: 0; border-bottom: none; border-bottom-left-radius: 0; border-bottom-right-radius: 0; box-shadow: none; } .card-back { border-top: none; border-top-left-radius: 0; border-top-right-radius: 0; box-shadow: none; } }</style></head><body><div class=\"card-container\"><div class=\"card-front\"><div class=\"bg-pattern-top\"></div><div class=\"bg-pattern-bottom\"></div><div class=\"header-row\"><div style=\"width: 50px;\"><img src=\"file:///android_res/drawable/npcb.png\" style=\"width: 45px; height: auto;\" onerror=\"this.style.display=\'none\';\" /></div><div class=\"header-text\"><div style=\"display: flex; justify-content: center; margin-bottom: 2px;\"><img src=\"file:///android_res/drawable/emblem.png\" style=\"height: 35px;\" onerror=\"this.style.display=\'none\';\" /></div><div style=\"font-size: 9px; color: #333; font-weight: bold;\">\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4 \u0ab8\u0ab0\u0a95\u0abe\u0ab0</div><div style=\"font-size: 9px; color: #333; margin-bottom: 5px;\">\u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0a85\u0aa8\u0ac7 \u0aaa\u0ab0\u0abf\u0ab5\u0abe\u0ab0 \u0a95\u0ab2\u0acd\u0aaf\u0abe\u0aa3 \u0ab5\u0abf\u0aad\u0abe\u0a97</div><div style=\"font-size: 13px; font-weight: bold; color: #1565c0; line-height: 1.2;\">\u0ab0\u0abe\u0ab7\u0acd\u0a9f\u0acd\u0ab0\u0ac0\u0aaf \u0a85\u0a82\u0aa7\u0aa4\u0acd\u0ab5 \u0a85\u0aa8\u0ac7 \u0aa6\u0acd\u0ab0\u0ab7\u0acd\u0a9f\u0abf<br>\u0a96\u0abe\u0aae\u0ac0 \u0aa8\u0abf\u0aaf\u0a82\u0aa4\u0acd\u0ab0\u0aa3 \u0a95\u0abe\u0ab0\u0acd\u0aaf\u0a95\u0acd\u0ab0\u0aae</div><div style=\"font-size: 11px; font-weight: bold; color: #333; margin-top: 3px;\">\u0a95\u0acb\u0aae\u0acd\u0aaf\u0ac1\u0aa8\u0abf\u0a9f\u0ac0 \u0a86\u0a87 \u0ab8\u0acd\u0a95\u0acd\u0ab0\u0ac0\u0aa8\u0ac0\u0a82\u0a97 \u0aaa\u0acd\u0ab0\u0acb\u0a97\u0acd\u0ab0\u0abe\u0aae</div></div><div style=\"width: 50px; text-align: right;\"><img src=\"file:///android_res/drawable/nhm_logo.png\" style=\"width: 45px; height: auto;\" onerror=\"this.style.display=\'none\';\" /></div></div><div style=\"display: flex; justify-content: space-between; padding: 0 15px; margin-top: 10px; position: relative; z-index: 1;\"><div style=\"display: flex; width: 55%; align-items: baseline; font-size: 13px; font-weight: bold;\"><div class=\"form-label\" style=\"margin-right: 8px;\">\u0aa8\u0abe\u0aae :</div><div class=\"form-value\" style=\"flex: 1; border-bottom: 1px solid #666; font-weight: normal; color: #000; min-height: 18px;\">"

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v0, v21

    .line 3028
    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div></div><div style=\"display: flex; width: 42%; align-items: baseline; font-size: 13px; font-weight: bold;\"><div class=\"form-label\" style=\"margin-right: 8px; white-space: nowrap;\">Techo Id:</div><div class=\"form-value\" style=\"flex: 1; border-bottom: 1px solid #666; font-weight: normal; color: #000; min-height: 18px;\">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v1, v21

    .line 3032
    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div></div></div><div style=\"display: flex; justify-content: space-between; padding: 0 15px; margin-top: 10px; position: relative; z-index: 1;\"><div style=\"display: flex; width: 45%; align-items: baseline; font-size: 13px; font-weight: bold;\"><div class=\"form-label\">\u0a89\u0a82\u0aae\u0ab0 :</div><div class=\"form-value\">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_f

    move-object v1, v2

    goto :goto_a

    :cond_f
    move-object/from16 v1, v21

    .line 3039
    :goto_a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div></div><div style=\"display: flex; width: 45%; align-items: baseline; font-size: 13px; font-weight: bold;\"><div class=\"form-label\">\u0aa4\u0abe\u0ab0\u0ac0\u0a96 :</div><div class=\"form-value\">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div></div></div><table><tr class=\"table-header\"><th></th><th colspan=\"4\">RE</th><th colspan=\"4\">LE</th></tr><tr class=\"table-subheader\"><th></th><th>SPH</th><th>CYL</th><th>AXIS</th><th>VN</th><th>SPH</th><th>CYL</th><th>AXIS</th><th>VN</th></tr><tr><td class=\"row-label\">Dist.</td><td>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</td><td>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3065
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3066
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3067
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</td></tr><tr><td class=\"row-label\">Near</td><td>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    .line 3072
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    .line 3073
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    .line 3074
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    .line 3075
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    .line 3076
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    .line 3077
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    .line 3078
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</td></tr><tr><td class=\"row-label\">Ad.</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table><div class=\"blue-bar\">\u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0a85\u0aa8\u0ac7 \u0aaa\u0ab0\u0abf\u0ab5\u0abe\u0ab0 \u0a95\u0ab2\u0acd\u0aaf\u0abe\u0aa3 \u0ab5\u0abf\u0aad\u0abe\u0a97, \u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4 \u0ab0\u0abe\u0a9c\u0acd\u0aaf</div><div class=\"footer-text\" style=\"align-items: flex-end; padding-top: 35px; padding-bottom: 20px;\"><div>\u0a9a\u0abe\u0ab2\u0acb, \u0a9a\u0a95\u0acd\u0ab7\u0ac1\u0aa6\u0abe\u0aa8 \u0aa8\u0ac7 \u0a86\u0aaa\u0aa3\u0ac0 \u0a95\u0acc\u0a9f\u0ac1\u0a82\u0aac\u0abf\u0a95 \u0aaa\u0ab0\u0a82\u0aaa\u0ab0\u0abe \u0aac\u0aa8\u0abe\u0ab5\u0ac0\u0a8f.</div><div style=\"text-align: center;\"><div style=\"border-bottom: 1px solid #1565c0; width: 120px; margin-bottom: 5px;\"></div>\u0aa8\u0ac7\u0aa4\u0acd\u0ab0 \u0ab8\u0ab0\u0acd\u0a9c\u0aa8 / \u0aa8\u0ac7\u0aa4\u0acd\u0ab0 \u0ab8\u0ab9\u0abe\u0aaf\u0a95</div></div></div><div class=\"card-back\"><div class=\"inner-card\"><div style=\"text-align: center; margin-bottom: 5px;\"><img src=\"file:///android_res/drawable/npcb.png\" style=\"height: 45px;\" onerror=\"this.style.display=\'none\';\" /></div><div class=\"instructions-title\"><span>\u0a86\u0a82\u0a96\u0aa8\u0ac0 \u0ab8\u0a82\u0aad\u0abe\u0ab3 \u0a85\u0a82\u0a97\u0ac7 \u0a9c\u0ab0\u0ac2\u0ab0\u0ac0 \u0ab8\u0ac2\u0a9a\u0aa8\u0abe</span></div><table class=\"instructions-list\"><tr><td>\u0ae7.</td><td>\u0ae6 - \u0ae7\u0aee \u0ab5\u0ab0\u0acd\u0ab7\u0aa8\u0abe \u0aac\u0abe\u0ab3\u0a95\u0acb\u0aa8\u0ac0 \u0a86\u0a82\u0a96\u0acb\u0aa8\u0ac0 \u0aa8\u0abf\u0aaf\u0aae\u0abf\u0aa4 \u0aa4\u0aaa\u0abe\u0ab8 \u0a95\u0ab0\u0abe\u0ab5\u0ac0 \u0a9c\u0acb \u0a9a\u0ab6\u0acd\u0aae\u0abe\u0a82\u0aa8\u0ac0 \u0a9c\u0ab0\u0ac2\u0ab0\u0abf\u0aaf\u0abe\u0aa4 \u0a9c\u0aa3\u0abe\u0aaf \u0aa4\u0acb \u0aa1\u0acb\u0a95\u0acd\u0a9f\u0ab0 \u0aa8\u0ac0 \u0ab8\u0ab2\u0abe\u0ab9 \u0aae\u0ac1\u0a9c\u0aac \u0aa8\u0abf\u0aaf\u0aae\u0abf\u0aa4 \u0a9a\u0ab6\u0acd\u0aae\u0abe\u0a82 \u0aaa\u0ab9\u0ac7\u0ab0\u0ab5\u0abe \u0a9c\u0ab0\u0ac2\u0ab0\u0ac0 \u0a9b\u0ac7.</td></tr><tr><td>\u0ae8.</td><td>\u0aea\u0ae6 \u0ab5\u0ab0\u0acd\u0ab7\u0aa5\u0ac0 \u0ab5\u0aa7\u0ac1 \u0ab5\u0aaf\u0aa8\u0abe \u0aa4\u0aae\u0abe\u0aae \u0ab5\u0acd\u0aaf\u0a95\u0acd\u0aa4\u0abf\u0a93\u0a8f \u0ab5\u0ab0\u0acd\u0ab7\u0aae\u0abe\u0a82 \u0a8f\u0a95 \u0ab5\u0abe\u0ab0 \u0a86\u0a82\u0a96\u0acb\u0aa8\u0ac0 \u0aa8\u0abf\u0aaf\u0aae\u0abf\u0aa4 \u0aa4\u0aaa\u0abe\u0ab8 \u0a95\u0ab0\u0abe\u0ab5\u0ab5\u0ac0 \u0a9c\u0ab0\u0ac2\u0ab0\u0ac0 \u0a9b\u0ac7.</td></tr><tr><td>\u0ae9.</td><td>\u0aa1\u0abe\u0aaf\u0abe\u0aac\u0abf\u0a9f\u0ac0\u0ab8 \u0aa8\u0abe \u0aa6\u0ab0\u0acd\u0aa6\u0ac0\u0a93 \u0aa8\u0ac7 \u0a86\u0a82\u0a96\u0aa8\u0abe \u0aaa\u0aa1\u0aa6\u0abe \u0aa8\u0ac0 \u0aa4\u0aaa\u0abe\u0ab8 \u0aa8\u0abf\u0aaf\u0aae\u0abf\u0aa4 \u0ab0\u0ac0\u0aa4\u0ac7 \u0ab5\u0ab0\u0acd\u0ab7\u0aae\u0abe\u0a82 \u0a8f\u0a95 \u0ab5\u0abe\u0ab0 \u0a95\u0ab0\u0abe\u0ab5\u0ab5\u0ac0 \u0a9c\u0ab0\u0ac2\u0ab0\u0ac0 \u0a9b\u0ac7.</td></tr><tr><td>\u0aea.</td><td>\u0aa6\u0ac2\u0aa7, \u0a98\u0ac0, \u0ab2\u0ac0\u0ab2\u0abe \u0ab6\u0abe\u0a95\u0aad\u0abe\u0a9c\u0ac0, \u0a97\u0abe\u0a9c\u0ab0 \u0a85\u0aa8\u0ac7 \u0aab\u0ab3\u0acb, \u0a86\u0a82\u0a96 \u0a85\u0aa8\u0ac7 \u0a86\u0ab0\u0acb\u0a97\u0acd\u0aaf \u0aae\u0abe\u0a9f\u0ac7 \u0a9c\u0ab0\u0ac2\u0ab0\u0ac0 \u0a9b\u0ac7.</td></tr><tr><td>\u0aeb.</td><td>\u0a95\u0acb\u0a88\u0aaa\u0aa3 \u0a86\u0a82\u0a96\u0aa8\u0abe \u0a93\u0aaa\u0ab0\u0ac7\u0ab6\u0aa8 \u0aac\u0abe\u0aa6 \u0aa1\u0acb\u0a95\u0acd\u0a9f\u0ab0 \u0aa8\u0ac0 \u0ab8\u0ab2\u0abe\u0ab9 \u0aae\u0ac1\u0a9c\u0aac \u0aa4\u0a95\u0ac7\u0aa6\u0abe\u0ab0\u0ac0 \u0aa8\u0abe \u0aaa\u0a97\u0ab2\u0abe\u0a82 \u0ab2\u0ac7\u0ab5\u0abe \u0a9c\u0ab0\u0ac2\u0ab0\u0ac0 \u0a9b\u0ac7</td></tr></table></div></div></div></body></html>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    :goto_b
    move-object/from16 v21, v1

    return-object v21
.end method

.method private getImmunisationGivenString(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;
    .locals 9

    .line 2240
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2243
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    .line 2244
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2245
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TT"

    const-string v8, "TD"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 2247
    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v6

    .line 2249
    array-length v5, p1

    if-eq v4, v5, :cond_0

    .line 2250
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2253
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMembersLessThan20(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation

    .line 2185
    const-string v0, "state"

    const-string v1, "motherId"

    const-string v2, "familyId"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    .line 2190
    :try_start_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2191
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, 0x10

    .line 2192
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    const/16 v8, -0x14

    .line 2194
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 2197
    :goto_0
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 2198
    invoke-virtual {v7, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 2199
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 2200
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v7, "dob"

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Lcom/j256/ormlite/stmt/Where;->gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 2201
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    sget-object v3, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {p1, v0, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 2204
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 2205
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 2206
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 2207
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "actualId"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    .line 2208
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    sget-object v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {p2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p2

    .line 2210
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 2211
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2213
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2217
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "actualGravida"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2219
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "selectedChildren"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 2224
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, v6}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v4
.end method

.method private static getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 3144
    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3147
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3148
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3150
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3151
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3156
    :catch_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3157
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 3158
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3159
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    .line 3160
    aget-object p0, v4, p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private setOnsiteBlockVillageIdsFromMemberArea(Ljava/lang/String;)V
    .locals 7

    const-string v0, "setOnsiteBlockVillageIdsFromMemberArea: no block ancestor found for member areaId="

    if-eqz p1, :cond_5

    .line 2836
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2840
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2841
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v2, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getBlockLevelAncestor(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2842
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 2847
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 2848
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveVillagesUnderAncestor(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 2849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2850
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 2851
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 2852
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    :cond_2
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2856
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOnsiteBlockVillageIdsFromMemberArea: memberAreaId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " block="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " villagesFound="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2856
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "onsiteBlockVillageIds"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2843
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - either that location isn\'t in the local location_master table, or its parent chain up to District is incomplete"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2860
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid member areaId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public isChildImmunisedInOneYear(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;
    .locals 7

    .line 2257
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No"

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 2258
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2260
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    .line 2261
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2264
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2265
    const-string p1, "BCG"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OPV_1"

    .line 2266
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OPV_2"

    .line 2267
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OPV_3"

    .line 2268
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "PENTA_1"

    .line 2269
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DPT_1"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    const-string p1, "PENTA_2"

    .line 2270
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "DPT_2"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    const-string p1, "PENTA_3"

    .line 2271
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "DPT_3"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    const-string p1, "MEASLES_RUBELLA_1"

    .line 2272
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "MEASLES_1"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2273
    :cond_4
    const-string p1, "Yes"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2275
    :cond_5
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2278
    :cond_6
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2281
    :cond_7
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isChildImmunisedInTwoYear(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;
    .locals 7

    .line 2286
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No"

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2287
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2289
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    .line 2290
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2293
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2294
    const-string p1, "BCG"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "OPV_1"

    .line 2295
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "OPV_2"

    .line 2296
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "OPV_3"

    .line 2297
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "OPV_BOOSTER"

    .line 2298
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "PENTA_1"

    .line 2299
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DPT_1"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_1
    const-string p1, "PENTA_2"

    .line 2300
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "DPT_2"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_2
    const-string p1, "PENTA_3"

    .line 2301
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "DPT_3"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    const-string p1, "MEASLES_RUBELLA_1"

    .line 2302
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "MEASLES_1"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    const-string p1, "MEASLES_RUBELLA_2"

    .line 2303
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "MEASLES_2"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2304
    :cond_5
    const-string p1, "Yes"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2306
    :cond_6
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2309
    :cond_7
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2312
    :cond_8
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setMetaDataForAdolescentForm(Ljava/lang/Long;Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    .line 1559
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1560
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    .line 1561
    sput-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 1563
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1565
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v6, "currentDate"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string v5, "schoolActualId"

    const-string v6, "schoolName"

    const-string v7, "actualID"

    if-eqz v3, :cond_1

    .line 1569
    :try_start_0
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1570
    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1571
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1573
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1576
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    :cond_0
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    :cond_1
    const-string v3, "currentStudyingStandard"

    if-eqz p10, :cond_2

    .line 1582
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    :cond_2
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v8

    .line 1586
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1587
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1590
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "locationId"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1591
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-eqz p5, :cond_3

    .line 1594
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "cameFromSchool"

    const-string v13, "yes"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1596
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "cameFromSchool"

    const-string v13, "no"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p6, :cond_4

    .line 1600
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1601
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "newEntry"

    const-string v13, "1"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1603
    :cond_4
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "newEntry"

    const-string v13, "2"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    :goto_2
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1607
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_5
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1611
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "areaId"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v2, :cond_7

    .line 1615
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "memberId"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    :cond_7
    const-string v2, "ageDisplay"

    const-string v12, "adolescentScreeningDate"

    const-string v13, "age"

    const-string v0, "gender"

    const-string v14, "nameOfBeneficiary"

    const-string v15, "memberFullName"

    const-string v4, "childFirstName"

    move-object/from16 v16, v5

    const-string v5, "uniqueHealthId"

    const/16 v17, 0x0

    move-object/from16 p7, v8

    const-string v8, "isSelfGroupAssigned"

    move-object/from16 p1, v8

    const-string v8, ")"

    move-object/from16 v18, v3

    const-string v3, " ("

    move-object/from16 v19, v6

    const/16 v20, 0x1

    const-string v6, "memberActualId"

    move-object/from16 v21, v7

    if-eqz p2, :cond_22

    .line 1619
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1625
    invoke-static/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1624
    const-string v5, "nameForLog"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1627
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1630
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1633
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1637
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getDob()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 1638
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1640
    aget v4, v0, v1

    aget v5, v0, v20

    const/4 v6, 0x2

    aget v0, v0, v6

    invoke-static {v4, v5, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1642
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getDob()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v0, v4, v20

    const-string v0, "%s (%s)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dobDisplay"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getDob()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dob"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAdolescentScreeningDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1650
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAdolescentScreeningDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1654
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHeight()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1658
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "weight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHaemoglobinMeasured()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1662
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHaemoglobinMeasured()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isHaemoglobinMeasured"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_e

    .line 1666
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "haemoglobin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getIfaTabTakenLastMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1670
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getIfaTabTakenLastMonth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ifaTabTakenLastMonth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getIfaTabTakenNow()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1674
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getIfaTabTakenNow()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ifaTabTakenNow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getPeriodStarted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1678
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getPeriodStarted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPeriodStarted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getSanitaryPadGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1682
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getSanitaryPadGiven()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isSanitaryPadGiven"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getNoOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getNoOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_13

    .line 1686
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getNoOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "numberOfSanitaryPadsGiven"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHavingMenstrualProblem()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1690
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getHavingMenstrualProblem()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isHavingMenstrualProblem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getTdInjectionGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1694
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getTdInjectionGiven()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isTDInjectionGiven"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getTdInjectionDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1698
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getTdInjectionDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tdInjectionDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1702
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isAlbandazoleGivenInLastSixMonths"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCounsellingDone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1706
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "counsellingDone"

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCounsellingDone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAbsorbentMaterialUsed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1710
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "absorbentMaterialUsed"

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAbsorbentMaterialUsed()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getIssueWithMenstruation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1714
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "issueWithMenstruation"

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getIssueWithMenstruation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCurrentSchool()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object/from16 v1, p0

    .line 1719
    :try_start_1
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1720
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCurrentSchool()Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v7, v21

    :try_start_2
    invoke-virtual {v0, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1721
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz v0, :cond_1c

    .line 1722
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1723
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v7, v21

    .line 1726
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1b
    move-object/from16 v1, p0

    move-object/from16 v7, v21

    .line 1731
    :cond_1c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCurrentStudyingStandard()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCurrentStudyingStandard()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1732
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCurrentStudyingStandard()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v18

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1736
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/util/Date;

    sget-object v4, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1737
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$3;

    invoke-direct {v4, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$3;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 1738
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1737
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-eqz v0, :cond_1e

    .line 1739
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1740
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    :cond_1e
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getReligion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1747
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "religion"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    :cond_1f
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getCaste()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1752
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "caste"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAnganwadiId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1757
    :try_start_3
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1758
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAnganwadiId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1759
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v2, "level"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-eqz v0, :cond_21

    .line 1760
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1761
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "anganwadiId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 1764
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1768
    :cond_21
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1770
    :try_start_4
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1771
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_5e

    .line 1773
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1775
    new-instance v2, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$4;

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$4;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 1776
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1777
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 1778
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1779
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ashaInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name"

    .line 1780
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mobileNumber"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1779
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_11

    :catch_4
    move-exception v0

    .line 1784
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    :cond_22
    move-object/from16 p10, v11

    move-object/from16 v22, v18

    move-object/from16 v11, v19

    move-object/from16 v7, v21

    move-object/from16 v23, v12

    move-object/from16 v12, p1

    move-object/from16 p1, v23

    if-eqz p7, :cond_45

    move-object/from16 p6, v2

    .line 1789
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    move-object/from16 p8, v13

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v2

    .line 1790
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v18, v12

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    invoke-static/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1795
    const-string v12, "nameForLog"

    invoke-interface {v4, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1798
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1801
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1803
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    :cond_23
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1807
    :try_start_5
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v4, "actualId"

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_24

    .line 1809
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "phoneNumber"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "motherHealthId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "motherName"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 1814
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1818
    :cond_24
    :goto_6
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getPlaceOfBirth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormsOfPlace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1820
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "placeOfBirth"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    :cond_25
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1824
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "familyPhoneNumber"

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1825
    :cond_26
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1827
    :try_start_6
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v4, "actualId"

    .line 1828
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_27

    .line 1830
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "familyPhoneNumber"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 1833
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1837
    :cond_27
    :goto_7
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1838
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v4, Ljava/util/Date;

    sget-object v5, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1839
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$5;

    invoke-direct {v5, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$5;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 1840
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1839
    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 1841
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1843
    :try_start_7
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1844
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz v0, :cond_28

    .line 1846
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 1847
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    .line 1850
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1852
    :cond_28
    :goto_8
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v12, v16

    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    :cond_29
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1855
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v18

    invoke-interface {v0, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2a
    move-object/from16 v13, v18

    .line 1859
    :goto_9
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1860
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 1861
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p8

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v4, 0x0

    .line 1863
    aget v5, v0, v4

    aget v6, v0, v20

    const/4 v10, 0x2

    aget v0, v0, v10

    invoke-static {v5, v6, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1865
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v6, p6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v6, p10

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v4

    aput-object v0, v10, v20

    const-string v0, "%s (%s)"

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "dobDisplay"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dob"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2b
    move-object/from16 v6, p10

    :goto_a
    if-eqz v2, :cond_2c

    .line 1873
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "address"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz v2, :cond_30

    .line 1877
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "familyActualId"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "areaId"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "address"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1881
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1883
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "religion"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    :cond_2d
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1887
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1889
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "caste"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    :cond_2e
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1895
    :try_start_8
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1896
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1897
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v4, "level"

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-eqz v0, :cond_2f

    .line 1898
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 1899
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "anganwadiId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    .line 1902
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1906
    :cond_2f
    :goto_b
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1908
    :try_start_9
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1909
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_30

    .line 1911
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1913
    new-instance v2, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$6;

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$6;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 1914
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1915
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 1916
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1917
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ashaInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name"

    .line 1918
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mobileNumber"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1917
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    .line 1922
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1927
    :cond_30
    :goto_c
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 1928
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1929
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/util/Date;

    sget-object v3, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1930
    invoke-virtual/range {p7 .. p7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 1932
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAdolescentScreeningDateInLong()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1933
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAdolescentScreeningDateInLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    :cond_31
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_32

    .line 1937
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "height"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    :cond_32
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_33

    .line 1941
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "weight"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    :cond_33
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobinMeasured()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1945
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobinMeasured()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isHaemoglobinMeasured"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    :cond_34
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_35

    .line 1949
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "haemoglobin"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    :cond_35
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getServiceLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1953
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "serviceLocation"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getServiceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    :cond_36
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIfaTabTakenLastMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1957
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIfaTabTakenLastMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ifaTabTakenLastMonth"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    :cond_37
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIfaTabTakenNow()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1961
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIfaTabTakenNow()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ifaTabTakenNow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    :cond_38
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPeriodStarted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1965
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPeriodStarted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isPeriodStarted"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    :cond_39
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSanitaryPadGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1969
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSanitaryPadGiven()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isSanitaryPadGiven"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    :cond_3a
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNumberOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNumberOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3b

    .line 1973
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNumberOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "numberOfSanitaryPadsGiven"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    :cond_3b
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHavingMenstrualProblem()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1977
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHavingMenstrualProblem()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isHavingMenstrualProblem"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    :cond_3c
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTDInjectionGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1981
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTDInjectionGiven()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isTDInjectionGiven"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    :cond_3d
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTdInjectionDateInLong()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1985
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTdInjectionDateInLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tdInjectionDate"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    :cond_3e
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1989
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isAlbandazoleGivenInLastSixMonths"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    :cond_3f
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCounsellingDone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1993
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "counsellingDone"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCounsellingDone()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    :cond_40
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAbsorbentMaterialUsed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1997
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "absorbentMaterialUsed"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAbsorbentMaterialUsed()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    :cond_41
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIssueWithMenstruation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 2001
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "issueWithMenstruation"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIssueWithMenstruation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    :cond_42
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_43

    .line 2006
    :try_start_a
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2007
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2008
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz v0, :cond_43

    .line 2009
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 2010
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    .line 2013
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2018
    :cond_43
    :goto_d
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCurrentStudyingStandard()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2019
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCurrentStudyingStandard()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    :cond_44
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 2022
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_45
    move-object/from16 p6, v3

    move-object v3, v13

    move-object v13, v12

    move-object/from16 v12, v16

    move-object/from16 v16, p1

    move-object/from16 p1, v8

    move-object v8, v2

    move-object/from16 v2, p10

    if-eqz p3, :cond_5e

    move-object/from16 p10, v2

    .line 2027
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v18, v8

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2033
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2036
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 2039
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :cond_46
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2043
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$7;

    invoke-direct {v4, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$7;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 2044
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 2043
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2045
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2047
    :try_start_b
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2048
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2049
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz v0, :cond_47

    .line 2050
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 2051
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_e

    :catch_b
    move-exception v0

    .line 2054
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2056
    :cond_47
    :goto_e
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    :cond_48
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2059
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    :cond_49
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2064
    new-instance v0, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 2065
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    new-instance v0, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 2067
    aget v3, v0, v2

    aget v4, v0, v20

    const/4 v5, 0x2

    aget v0, v0, v5

    invoke-static {v3, v4, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2069
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v4, v18

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, p10

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v0, v5, v20

    const-string v0, "%s (%s)"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2071
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "dobDisplay"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dob"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_4a
    move-object/from16 v4, p10

    .line 2076
    :goto_f
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdolescentScreeningDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 2077
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdolescentScreeningDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    :cond_4b
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 2081
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    :cond_4c
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 2085
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "weight"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    :cond_4d
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHaemoglobinMeasured()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2089
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHaemoglobinMeasured()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isHaemoglobinMeasured"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    :cond_4e
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_4f

    .line 2093
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "haemoglobin"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    :cond_4f
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfaTabTakenLastMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2097
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfaTabTakenLastMonth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ifaTabTakenLastMonth"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    :cond_50
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfaTabTakenNow()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 2101
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfaTabTakenNow()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ifaTabTakenNow"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    :cond_51
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPeriodStarted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 2105
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPeriodStarted()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isPeriodStarted"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    :cond_52
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSanitaryPadGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 2109
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSanitaryPadGiven()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSanitaryPadGiven"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    :cond_53
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNumberOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNumberOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_54

    .line 2113
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNumberOfSanitaryPadsGiven()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "numberOfSanitaryPadsGiven"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    :cond_54
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHavingMenstrualProblem()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 2117
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHavingMenstrualProblem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isHavingMenstrualProblem"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    :cond_55
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getTDInjectionGiven()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2121
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getTDInjectionGiven()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isTDInjectionGiven"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    :cond_56
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getTdInjectionDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2125
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getTdInjectionDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tdInjectionDate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    :cond_57
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 2129
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isAlbandazoleGivenInLastSixMonths"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    :cond_58
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCounsellingDone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 2133
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "counsellingDone"

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCounsellingDone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    :cond_59
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAbsorbentMaterialUsed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2137
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "absorbentMaterialUsed"

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAbsorbentMaterialUsed()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    :cond_5a
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIssueWithMenstruation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 2141
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "issueWithMenstruation"

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIssueWithMenstruation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    :cond_5b
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 2145
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    :cond_5c
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAnganwadiId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 2150
    :try_start_c
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2151
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAnganwadiId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v2, "level"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-eqz v0, :cond_5d

    .line 2153
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 2154
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "anganwadiId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 2157
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2161
    :cond_5d
    :goto_10
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 2163
    :try_start_d
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2164
    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_5e

    .line 2166
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 2168
    new-instance v2, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$8;

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$8;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 2169
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2170
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 2171
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2172
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ashaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    .line 2173
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mobileNumber"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2172
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 2177
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2181
    :cond_5e
    :goto_11
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMetaDataForAmrutpanSupervisionForm(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;)V
    .locals 7

    .line 3356
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3357
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3359
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 3360
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3361
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "memberActualId"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3362
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "familyId"

    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3365
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "serviceDate"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3366
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v5, "currentDate"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 3369
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3370
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "areaId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberName"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3372
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "uniqueHealthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "phoneNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3377
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3376
    const-string v3, "nameForLog"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3378
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3379
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dob"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dobDisplay"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3381
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ageDisplay"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3384
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "weight"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3386
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public setMetaDataForCovidTravellersForm(Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V
    .locals 5

    .line 3322
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3323
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3327
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "currentDate"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actualId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3329
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "address"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "mobileNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3333
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getDateOfDeparture()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3334
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getDateOfDeparture()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "travelDate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getDateOfDeparture()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "travelDateDisplay"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3337
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getDateOfReceipt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3338
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getDateOfReceipt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "infoReceivedDate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getDateOfReceipt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "infoReceivedDateDisplay"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3341
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getPinCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3342
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getPinCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pinCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getTrackingStartDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3345
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getTrackingStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackingStartDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getTrackingStartDate()Ljava/util/Date;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    const/16 v0, 0xe

    if-ge p1, v0, :cond_3

    .line 3348
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 14"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "trackingDay"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 3351
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "notificationId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 9

    .line 3426
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3427
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->filariaAnswerMapWithMemberAsKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3428
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 3429
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 3430
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3431
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3432
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    const/16 v1, 0x8

    const/16 v2, 0x7ea

    const/4 v3, 0x1

    .line 3433
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 3434
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "filariasisType"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3436
    const-string p3, "nameForLog"

    const-string v1, "familyId"

    if-eqz p4, :cond_0

    .line 3437
    sput-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 3438
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyActualId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3439
    const-string v2, "memberActualId"

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3440
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    aput-object v5, v7, v3

    const-string v4, "%s (%s)"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "memberName"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3441
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object p4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v8

    aput-object p4, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-eqz p1, :cond_2

    .line 3446
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 3447
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3448
    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyActualId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "areaId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3451
    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string v0, "customDate"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastFilariaDate()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3454
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastFilariaDate()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "lastServiceDate"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public setMetaDataForLcdcCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 3391
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3392
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->lcdcSuspectedDataBeans:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3393
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 3394
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 3395
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3397
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 3398
    const-string v1, "LCDC_CAMPAIGN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/16 v1, 0x7ea

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    const/16 v2, 0x1f

    .line 3399
    invoke-virtual {v0, v1, p3, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    const/4 v2, 0x7

    .line 3401
    invoke-virtual {v0, v1, p3, v2}, Ljava/util/Calendar;->set(III)V

    :goto_0
    if-eqz p1, :cond_2

    .line 3405
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 3406
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "familyId"

    invoke-interface {p2, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3408
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyActualId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3410
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "areaId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3411
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "nameForLog"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3412
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "customDate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "locationId"

    if-eqz p3, :cond_1

    .line 3415
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3416
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3418
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3419
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3421
    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public setMetaDataForMemberUpdateForm(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2317
    const-string v0, "ABDM_HEALTH_ID"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2318
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2319
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2323
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "currentDate"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2326
    const-string v5, "memberActualId"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2328
    :cond_0
    const-string v5, "familyId"

    if-eqz p2, :cond_2

    .line 2329
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2330
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "locationId"

    if-eqz v6, :cond_1

    .line 2331
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2333
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2337
    :cond_2
    :goto_0
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2338
    sput-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2339
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2340
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    .line 2343
    :try_start_0
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v8, "key"

    const-string v9, "featuresList"

    invoke-interface {v7, v8, v9}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2344
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    .line 2345
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 2346
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2347
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "generateAbdmHealthId"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2351
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2354
    :cond_3
    :goto_1
    const-string v0, "headOfFamily"

    const-string v7, "T"

    const-string v8, "membersUnder20Available"

    const-string v9, "F"

    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 2355
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getMembersLessThan20(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    .line 2357
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2358
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2360
    :cond_4
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    :goto_2
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v2, :cond_23

    .line 2367
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "memberId"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2368
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "nameOfBeneficiary"

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "aadharNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "bankAccountNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "middleName"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2373
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2372
    const-string v12, "nameForLog"

    invoke-interface {v5, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2375
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "dob"

    invoke-interface {v5, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "dobDisplay"

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    :cond_6
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "familyHeadFlag"

    const-string v10, "2"

    invoke-interface {v3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "canArchiveHofMember"

    const-string v13, "1"

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2381
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x1

    if-eqz v3, :cond_c

    .line 2382
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c

    .line 2383
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2385
    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v20, v15

    move-object v15, v6

    move-object/from16 v6, v20

    goto :goto_6

    .line 2386
    :cond_8
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-object/from16 v17, v3

    const/16 v3, -0x12

    .line 2387
    invoke-virtual {v6, v14, v3}, Ljava/util/Calendar;->add(II)V

    .line 2388
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 2389
    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2390
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v3, v6, v14, v15}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v19

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v6, v19

    goto :goto_5

    :cond_a
    move-object v6, v15

    :goto_5
    const/4 v15, 0x0

    :goto_6
    move-object/from16 v3, v17

    const/4 v14, 0x1

    move-object/from16 v20, v15

    move-object v15, v6

    move-object/from16 v6, v20

    goto :goto_3

    :cond_b
    move-object v6, v15

    .line 2394
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v14, "com.argusoft.imtecho.member.state.archived"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v14, "CFHC_MD"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2395
    sput-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->nonHofMemberNameList:Ljava/util/List;

    .line 2398
    :cond_c
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->nonHofMemberNameList:Ljava/util/List;

    if-eqz v3, :cond_d

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->nonHofMemberNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2399
    :cond_d
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v3

    .line 2403
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2404
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v6

    const-string v12, "CFHC_MV"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2405
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v12, 0x1

    add-int/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    goto :goto_7

    :cond_f
    const/4 v12, 0x1

    goto :goto_7

    .line 2408
    :cond_10
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "grandfatherName"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    :cond_11
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "memberFullName"

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "firstName"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "lastName"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "nameBasedOnAadhar"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "mobileNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ifsc"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "uniqueHealthId"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "defaultMaritalStatus"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ans12"

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->isAadharUpdated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2423
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "aadhaarAvailable"

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNormalCycleDays()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2426
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNormalCycleDays()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "normalCycleDays"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    :cond_13
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "familyPlanningMethod"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "isPregnant"

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2431
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2433
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2436
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lmp"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2442
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 2444
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getListValueById(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2442
    const-string v5, "educationStatus"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    const-string v3, "congenitalStatus"

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2449
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "congenitalAnomalyIds"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2452
    :cond_17
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    const-string v3, "chronicDiseaseStatus"

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2456
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "chronicDiseaseIds"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2459
    :cond_18
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    const-string v3, "currentDiseaseStatus"

    if-eqz v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2463
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "currentDiseaseIds"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2466
    :cond_19
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    const-string v3, "eyeIssueStatus"

    if-eqz v0, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2470
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "eyeIssueIds"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 2473
    :cond_1a
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2476
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2477
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "motherId"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2481
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "healthIdNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2485
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "629"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2486
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getMembersLessThan20(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    .line 2487
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2488
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 2490
    :cond_1d
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    :cond_1e
    :goto_c
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getRchIdByMemberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "rchId"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2496
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/util/Date;

    sget-object v5, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v3, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 2497
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2498
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsUploaded()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_d

    :cond_1f
    move-object v7, v9

    :goto_d
    const-string v0, "MOVerified"

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameAsPerBankAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2501
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "nameAsPerBank"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameAsPerBankAccount()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPmjayNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2504
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "pmjayCardNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPmjayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2507
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "brnNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    :cond_23
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMetaDataForNCDForms(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V
    .locals 6

    .line 2515
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2516
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 2517
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2519
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 2521
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v1, "currentDate"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2523
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveAshaInfoByAreaId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    .line 2524
    const-string v0, "name"

    if-eqz p3, :cond_0

    .line 2525
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "ashaName"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    :cond_0
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveAshaInfoByAreaId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2529
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "fhwName"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    :cond_1
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getLocationByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p3

    .line 2532
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "village"

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p3

    .line 2534
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "subCentre"

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "phc"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    const-string p3, "1"

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2538
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberActualId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "uniqueHealthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberName"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2544
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2543
    const-string v3, "nameForLog"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2547
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2548
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2547
    const-string v3, "gender"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2552
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "mobileNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2556
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dob"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v1

    .line 2558
    aget v2, v1, v0

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-static {v2, v3, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2560
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ageDisplay"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2565
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "cbacDone"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2568
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2569
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cbacDate"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p2, :cond_15

    .line 2574
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyActualId"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "address"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnyMemberCbacDone()Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "anyMemberCbacDone"

    if-eqz p1, :cond_14

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnyMemberCbacDone()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2578
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getTypeOfHouse()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2581
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getTypeOfHouse()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "typeOfHouse"

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    :cond_7
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getTypeOfToilet()Ljava/lang/String;

    move-result-object p1

    const-string p3, ", "

    const-string v1, ","

    if-eqz p1, :cond_9

    .line 2586
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2587
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getTypeOfToilet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    .line 2588
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2590
    :cond_8
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "availabilityOfToilet"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    :cond_9
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getElectricityAvailability()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2594
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2595
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getElectricityAvailability()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 2596
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2598
    :cond_a
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "availabilityOfElectricity"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    :cond_b
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getDrinkingWaterSource()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2603
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getDrinkingWaterSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    .line 2604
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2606
    :cond_c
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "sourceOfDrinkingWater"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    :cond_d
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFuelForCooking()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2610
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2611
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFuelForCooking()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_e

    aget-object v5, v2, v4

    .line 2612
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2614
    :cond_e
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "typeOfFuelUsed"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    :cond_f
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVehicleDetails()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2618
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVehicleDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 2620
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2622
    :cond_10
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "typeOfMotorizedVehicle"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2625
    :cond_11
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHouseOwnershipStatus()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2626
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2627
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHouseOwnershipStatus()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2626
    const-string v0, "houseOwnershipStatus"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    :cond_12
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRationCardNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2631
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p3, "rationCardNumber"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRationCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2634
    :cond_13
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnnualIncome()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2635
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2636
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnnualIncome()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2635
    const-string p3, "annualHouseholdIncome"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2639
    :cond_14
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "2"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_5
    return-void
.end method

.method public setMetaDataForNPCBForms(Ljava/lang/Long;)V
    .locals 6

    .line 2646
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2647
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2649
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2651
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "serviceDate"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "currentDate"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2656
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberActualId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberName"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "uniqueHealthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "phoneNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameForLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2664
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2663
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2666
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dob"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dobDisplay"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "ageDisplay"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2672
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "gender"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2675
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2676
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getBloodSugar()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2677
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "bloodSugar"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getBloodSugar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2679
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSymptomsExperiencedNew()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2680
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "eyeProblemsNew"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSymptomsExperiencedNew()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    :cond_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getMedicalHistoryNew()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2683
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "medicalHistoryNew"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getMedicalHistoryNew()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2685
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getFamilyMedicalHistoryNew()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2686
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyMedicalHistoryNew"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getFamilyMedicalHistoryNew()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2692
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyActualId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "areaId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "address"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2696
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2698
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "religion"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    :cond_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2702
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2704
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "caste"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2710
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2711
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPresumptiveDiagnosis()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2712
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "presumptiveDiagnosis"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPresumptiveDiagnosis()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    :cond_8
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVisionData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2715
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "visionData"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVisionData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->isAadharUpdated()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2719
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "aadhaarAvailable"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_0
    return-void
.end method

.method public setMetaDataForNPCBFormsFromOnline(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 2729
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2730
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2732
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2733
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "serviceDate"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "currentDate"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 2737
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberActualId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotificationId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2740
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "notificationId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotificationId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    :cond_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyActualId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyActualId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "areaId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setOnsiteBlockVillageIdsFromMemberArea(Ljava/lang/String;)V

    .line 2746
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberName"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "uniqueHealthId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyId"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "phoneNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2751
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "healthIdNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "bplCardNumber"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBplCardNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    .line 2757
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2760
    :cond_1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "nameForLog"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2762
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2763
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dob"

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dobDisplay"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "ageDisplay"

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2769
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "gender"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "address"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2773
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getReligion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2775
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "religion"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2778
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2779
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCaste()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2781
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "caste"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2786
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$9;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$9;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 2787
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2786
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2788
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVisionData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2789
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "glassPrescriptionForNearVision"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVisionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->formatVisionDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2790
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "spectsData"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVisionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "visionData"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVisionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "osTreatment"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getOsTreatment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    :cond_6
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->buildEyeProblemsSummary(Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;)Ljava/lang/String;

    move-result-object v0

    .line 2795
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2796
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "reasonsForReferral"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->isAadharUpdated()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2800
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "aadhaarAvailable"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_0
    return-void
.end method

.method public setMetaDataForOtherNotificationsForm(Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V
    .locals 18

    move-object/from16 v1, p0

    .line 3168
    const-string v2, "actualID"

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3169
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3170
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    .line 3171
    sput-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 3173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3175
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v7, "currentDate"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_10

    .line 3178
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "notificationId"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getScheduledDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3181
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v6, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getScheduledDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ironSucroseDueDate"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    :cond_0
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 3186
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "memberId"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "memberActualId"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "nameOfBeneficiary"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3189
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "memberName"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "uniqueHealthId"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "familyId"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "healthIdNumber"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    :try_start_0
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3198
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3201
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v5

    .line 3204
    :goto_0
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3206
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "gender"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 3210
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "phoneNumber"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3212
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "motherHealthId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3213
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "motherName"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    :cond_3
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 3217
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    const-string v7, " ("

    const-string v8, "Kgs"

    const-string v9, " "

    const-string v10, ")"

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3218
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v11, Ljava/util/Date;

    sget-object v12, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 3219
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 3220
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 3221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3224
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 3225
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v3, v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3226
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3232
    :cond_4
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "lastWeightAndDate"

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3233
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "lastWeight"

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    :cond_5
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getPlaceOfBirth()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3238
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "placeOfBirth"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getPlaceOfBirth()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3240
    :cond_6
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3241
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "birthWeight"

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3242
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "birthWeightDisplay"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3246
    :cond_7
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3247
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3246
    const-string v8, "nameForLog"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3248
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3249
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v8, "dob"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3250
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "dobDisplay"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3251
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 3252
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 3251
    const-string v8, "ageDisplay"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3254
    :cond_8
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3255
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v8, "lmpDate"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "lmpDateDisplay"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    :cond_9
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 3259
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 3260
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v8

    const-string v9, " - "

    const-string v11, "#"

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v12, ","

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 3259
    const-string v9, "immunisation"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3262
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v8, "TT1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3263
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3264
    array-length v12, v9

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_b

    aget-object v0, v9, v13

    .line 3265
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3266
    aget-object v14, v0, v4

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3268
    :try_start_1
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "tt1GivenOn"

    const/16 v16, 0x1

    aget-object v0, v0, v16

    .line 3269
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3268
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3271
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3278
    :cond_b
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 3280
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "familyActualId"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3281
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    const-string v6, "isBpl"

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3282
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "Family is BPL"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3284
    :cond_c
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "Family is not BPL"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3286
    :goto_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3287
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3289
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "religion"

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    :cond_d
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3293
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3295
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "caste"

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3298
    :cond_e
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3300
    :try_start_2
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_f

    .line 3302
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3304
    new-instance v2, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$10;

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$10;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 3305
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3306
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3307
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3308
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ashaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mobileNumber"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 3312
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3315
    :cond_f
    :goto_4
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "address"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, " years"

    const-string v5, " years"

    .line 117
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 118
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    .line 119
    sput-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 120
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditions:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 124
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "memberId"

    move-object/from16 v10, p2

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :try_start_0
    sget-boolean v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    if-eqz v8, :cond_0

    .line 130
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    :try_start_1
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v8, v6

    goto :goto_0

    .line 133
    :cond_0
    :try_start_2
    iget-object v8, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_1

    .line 135
    :try_start_3
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v9, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v3

    goto :goto_1

    .line 137
    :cond_1
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v3, v6

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v3, v6

    move-object v8, v3

    .line 141
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :goto_1
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getRchIdByMemberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "rchId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "familyId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v12, "serviceDate"

    invoke-interface {v9, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v12, "currentDate"

    invoke-interface {v9, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_f3

    .line 151
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f3

    .line 161
    invoke-interface/range {p5 .. p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 162
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 165
    const-string v13, "memberActualId"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "curPregRegDetId"

    invoke-interface {v10, v14, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v13, "locationId"

    if-eqz p4, :cond_3

    .line 171
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 172
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v14

    .line 170
    :goto_2
    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getLocationId()Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 175
    :cond_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 176
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 179
    :cond_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x5

    .line 185
    invoke-virtual {v13, v14}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xb

    const/4 v9, 0x0

    .line 186
    invoke-virtual {v13, v15, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xc

    .line 187
    invoke-virtual {v13, v15, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xd

    .line 188
    invoke-virtual {v13, v15, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xe

    .line 189
    invoke-virtual {v13, v15, v9}, Ljava/util/Calendar;->set(II)V

    .line 190
    sget-object v15, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-string v14, "monthStart"

    invoke-interface {v15, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 191
    const-string v15, "memberIdAndName"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sput-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 195
    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz p4, :cond_5

    .line 198
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "notificationId"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "visitNumber"

    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 204
    :try_start_4
    iget-object v13, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v13}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    const-string v14, "actualID"

    .line 205
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    invoke-virtual {v13}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v13, :cond_6

    .line 207
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 209
    new-instance v14, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$1;

    invoke-direct {v14, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$1;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 210
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 211
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v15, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 212
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 213
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "ashaInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name"

    .line 214
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mobileNumber"

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 218
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_6
    :goto_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 224
    :try_start_5
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v9, "actualID"

    .line 225
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 226
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v9, "level"

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-eqz v6, :cond_7

    .line 227
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 228
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "anganwadiId"

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v6, v0

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_7
    :goto_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiUpdateFlag()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiUpdateFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 236
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "updateFamilyAnganwadi"

    const-string v13, "yes"

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_8
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "uniqueHealthId"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "memberName"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "nameOfBeneficiary"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v13, "visitDate"

    invoke-interface {v6, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "memberActualId"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "phoneNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "address"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "healthIdNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "healthId"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHealthId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v9

    const-string v13, "gender"

    invoke-interface {v6, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 249
    const-string v14, "nameForLog"

    invoke-interface {v6, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :try_start_6
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v9, "key"

    const-string v14, "featuresList"

    invoke-interface {v6, v9, v14}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 254
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x0

    .line 255
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 256
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v14, "ABDM_HEALTH_ID"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 257
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "generateAbdmHealthId"

    const-string v15, "ABDM_HEALTH_ID"

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_9
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v9, "ABDM_RECORD_LINK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 260
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v9, "generateAbdmRecordLink"

    const-string v14, "ABDM_RECORD_LINK"

    invoke-interface {v6, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v6, v0

    .line 264
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v9, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :cond_a
    :goto_6
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 268
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v6

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    .line 269
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "age"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v14, "dob"

    invoke-interface {v6, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "dobDisplay"

    invoke-interface {v6, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v9

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-static {v9, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "ageDisplay"

    invoke-interface {v6, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->isAadharUpdated()Z

    move-result v6

    const-string v9, "1"

    if-eqz v6, :cond_c

    .line 276
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "aadhaarAvailable"

    invoke-interface {v6, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 280
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "nameBasedOnAadhar"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_d
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 284
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "lastLmp"

    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "lmpDate"

    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 288
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v14, 0x119

    const/4 v15, 0x5

    .line 289
    invoke-virtual {v6, v15, v14}, Ljava/util/Calendar;->add(II)V

    .line 290
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "edd"

    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_e
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 294
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "lastDeliveryDate"

    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_f
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryOutcome()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 298
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "lastDeliveryOutcome"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryOutcome()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_10
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 303
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "lastMethodOfContraception"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfFamilyPlanningMethods(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 306
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "lastMethodOfContraceptionDisplay"

    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_11
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFpInsertOperateDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 310
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFpInsertOperateDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "fpInsertOperateDate"

    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_12
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 315
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 317
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "religion"

    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_13
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 322
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 324
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "caste"

    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_14
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v6

    const-string v14, "No"

    const-string v15, "Yes"

    if-eqz v6, :cond_15

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 329
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v17, v10

    const-string v10, "isBpl"

    invoke-interface {v6, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_15
    move-object/from16 v17, v10

    .line 331
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "isBpl"

    invoke-interface {v6, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_7
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    const-string v10, "actualId"

    if-eqz v6, :cond_16

    .line 335
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v18, v7

    const-string v7, "familyPhoneNumber"

    move-object/from16 v19, v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    move-object/from16 v19, v4

    move-object/from16 v18, v7

    .line 336
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 338
    :try_start_7
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 339
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v4, :cond_17

    .line 341
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "familyPhoneNumber"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 344
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_17
    :goto_8
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 350
    :try_start_8
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v4, :cond_18

    .line 352
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "motherHealthId"
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v20, v3

    :try_start_9
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "motherName"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v20, v3

    :goto_9
    move-object v3, v0

    .line 356
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_18
    move-object/from16 v20, v3

    .line 360
    :goto_a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 361
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "bankAccountNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_19
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getNameAsPerBankAccount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 365
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "nameAsPerBank"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getNameAsPerBankAccount()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIfsc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 369
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ifsc"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIfsc()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_1b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 373
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "isJsyBeneficiary"

    invoke-interface {v3, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 374
    :cond_1c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 375
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "isJsyBeneficiary"

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_1d
    :goto_b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 379
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "isJsyPaymentDone"

    invoke-interface {v3, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 380
    :cond_1e
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 381
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "isJsyPaymentDone"

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_1f
    :goto_c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v3

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 385
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "bloodGroup"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_20
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 389
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_d

    :cond_21
    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    const-string v6, "deliveryCount"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentPara()Ljava/lang/Short;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 393
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentPara()Ljava/lang/Short;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "currentPara"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentPara()Ljava/lang/Short;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "defaultPara"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 396
    :cond_22
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentPara"

    const-string v6, "0"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "defaultPara"

    const-string v6, "0"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :goto_e
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v3

    const-string v4, " "

    if-eqz v3, :cond_24

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 401
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    const/16 v6, 0x28

    if-gt v3, v6, :cond_23

    .line 403
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "weeksOfPregnancy"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_23
    add-int/lit8 v3, v3, -0x28

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "40 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+ overdue"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "weeks"

    .line 407
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "weeksOfPregnancy"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_24
    :goto_f
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 413
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lastServiceDate"

    move-object/from16 v21, v3

    const-string v3, "T"

    move-object/from16 v22, v5

    const-string v5, "F"

    if-eqz v6, :cond_38

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_38

    .line 414
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    move-object/from16 v23, v10

    const-class v10, Ljava/util/Date;

    move-object/from16 v24, v11

    sget-object v11, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v6, v10, v11}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v6

    .line 415
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v6, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 416
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastServiceLongDate()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_25

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastServiceLongDate()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v25, 0x0

    cmp-long v21, v10, v25

    if-lez v21, :cond_25

    .line 417
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastServiceLongDate()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_25
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAdolescentScreeningDateInLong()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 421
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAdolescentScreeningDateInLong()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v25, v5

    const-string v5, "adolescentScreeningDate"

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_26
    move-object/from16 v25, v5

    .line 424
    :goto_10
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_27

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_27

    .line 425
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "height"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_27
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 430
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_28

    .line 431
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/util/Date;

    .line 433
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 431
    const-string v12, "lastWeightDate"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_28
    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .line 437
    :goto_11
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_2a

    .line 438
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getWeight()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Kgs"

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 441
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_29

    .line 442
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 443
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastWeightDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 444
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 449
    :cond_29
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "lastWeightAndDate"

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "lastWeight"

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_2a
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastHeightDate()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_2b

    .line 454
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/util/Date;

    .line 456
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastHeightDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 454
    const-string v12, "lastHeightDate"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_2b
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastHgDate()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_2c

    .line 461
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/util/Date;

    .line 463
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastHgDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 461
    const-string v12, "lastHaemoglobinDate"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_2c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_2e

    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "gm"

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 471
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastHgDate()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_2d

    .line 472
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastHgDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 478
    :cond_2d
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "lastHaemoglobin"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "lastHaemoglobinDisplay"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_2e
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_2f

    .line 483
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "weight"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_2f
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_30

    .line 487
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "haemoglobin"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_30
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_31

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_31

    .line 491
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSchoolActualId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "schoolActualId"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_31
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSmoke()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 495
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSmoke()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "smoke"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_32
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getConsumeTobacco()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 499
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getConsumeTobacco()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "consumeTobacco"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_33
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 503
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSelfGroupAssigned()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "isSelfGroupAssigned"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_34
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsUploaded()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    move-object v10, v3

    goto :goto_12

    :cond_35
    move-object/from16 v10, v25

    :goto_12
    const-string v11, "MOVerified"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAlbendanzoleGiven()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 507
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAlbendanzoleGiven()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 508
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "albendazoleGiven"

    invoke-interface {v5, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 510
    :cond_36
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "albendazoleGiven"

    invoke-interface {v5, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 513
    :cond_37
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "albendazoleGiven"

    const-string v11, "Not available"

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    move-object/from16 v21, v6

    goto :goto_14

    :cond_38
    move-object/from16 v25, v5

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .line 517
    :goto_14
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    .line 518
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "congenitalAnomalyIds"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_39
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 522
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "chronicDiseaseIds"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_3a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 526
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "currentDiseaseIds"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_3b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 530
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "eyeIssueIds"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v10, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_15

    :sswitch_0
    const-string v5, "FHW_NS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto/16 :goto_15

    :cond_3d
    const/16 v5, 0x1b

    const/16 v10, 0x1b

    goto/16 :goto_15

    :sswitch_1
    const-string v5, "FHW_CS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto/16 :goto_15

    :cond_3e
    const/16 v5, 0x1a

    const/16 v10, 0x1a

    goto/16 :goto_15

    :sswitch_2
    const-string v5, "AWW_CS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto/16 :goto_15

    :cond_3f
    const/16 v5, 0x19

    const/16 v10, 0x19

    goto/16 :goto_15

    :sswitch_3
    const-string v5, "SAM_SCREENING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_15

    :cond_40
    const/16 v5, 0x18

    const/16 v10, 0x18

    goto/16 :goto_15

    :sswitch_4
    const-string v5, "ASHA_LMPFU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    goto/16 :goto_15

    :cond_41
    const/16 v5, 0x17

    const/16 v10, 0x17

    goto/16 :goto_15

    :sswitch_5
    const-string v5, "CMAM_FOLLOWUP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto/16 :goto_15

    :cond_42
    const/16 v5, 0x16

    const/16 v10, 0x16

    goto/16 :goto_15

    :sswitch_6
    const-string v5, "IDSP_MEMBER"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    goto/16 :goto_15

    :cond_43
    const/16 v5, 0x15

    const/16 v10, 0x15

    goto/16 :goto_15

    :sswitch_7
    const-string v5, "AWW_THR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto/16 :goto_15

    :cond_44
    const/16 v5, 0x14

    const/16 v10, 0x14

    goto/16 :goto_15

    :sswitch_8
    const-string v5, "ASHA_PNC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    goto/16 :goto_15

    :cond_45
    const/16 v5, 0x13

    const/16 v10, 0x13

    goto/16 :goto_15

    :sswitch_9
    const-string v5, "ASHA_ANC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    goto/16 :goto_15

    :cond_46
    const/16 v5, 0x12

    const/16 v10, 0x12

    goto/16 :goto_15

    :sswitch_a
    const-string v5, "VHRPW"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    goto/16 :goto_15

    :cond_47
    const/16 v5, 0x11

    const/16 v10, 0x11

    goto/16 :goto_15

    :sswitch_b
    const-string v5, "LMPFU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    goto/16 :goto_15

    :cond_48
    const/16 v5, 0x10

    const/16 v10, 0x10

    goto/16 :goto_15

    :sswitch_c
    const-string v5, "ASHA_CS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_15

    :cond_49
    const/16 v5, 0xf

    const/16 v10, 0xf

    goto/16 :goto_15

    :sswitch_d
    const-string v5, "NWC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto/16 :goto_15

    :cond_4a
    const/16 v5, 0xe

    const/16 v10, 0xe

    goto/16 :goto_15

    :sswitch_e
    const-string v5, "GMA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto/16 :goto_15

    :cond_4b
    const/16 v5, 0xd

    const/16 v10, 0xd

    goto/16 :goto_15

    :sswitch_f
    const-string v5, "FHW_PREG_CONF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto/16 :goto_15

    :cond_4c
    const/16 v5, 0xc

    const/16 v10, 0xc

    goto/16 :goto_15

    :sswitch_10
    const-string v5, "FHW_WPD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto/16 :goto_15

    :cond_4d
    const/16 v5, 0xb

    const/16 v10, 0xb

    goto/16 :goto_15

    :sswitch_11
    const-string v5, "FHW_VAE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    goto/16 :goto_15

    :cond_4e
    const/16 v5, 0xa

    const/16 v10, 0xa

    goto/16 :goto_15

    :sswitch_12
    const-string v5, "FHW_PNC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto/16 :goto_15

    :cond_4f
    const/16 v5, 0x9

    const/16 v10, 0x9

    goto/16 :goto_15

    :sswitch_13
    const-string v5, "FHW_ANC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    goto/16 :goto_15

    :cond_50
    const/16 v5, 0x8

    const/16 v10, 0x8

    goto/16 :goto_15

    :sswitch_14
    const-string v5, "AMRUTPAN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_15

    :cond_51
    const/4 v5, 0x7

    const/4 v10, 0x7

    goto :goto_15

    :sswitch_15
    const-string v5, "MR_VACCINATION"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_15

    :cond_52
    const/4 v5, 0x6

    const/4 v10, 0x6

    goto :goto_15

    :sswitch_16
    const-string v5, "FHW_SAM_SCREENING_REF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_15

    :cond_53
    const/4 v10, 0x5

    goto :goto_15

    :sswitch_17
    const-string v5, "IDSP_MEMBER_2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_15

    :cond_54
    const/4 v5, 0x4

    const/4 v10, 0x4

    goto :goto_15

    :sswitch_18
    const-string v5, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_15

    :cond_55
    const/4 v5, 0x3

    const/4 v10, 0x3

    goto :goto_15

    :sswitch_19
    const-string v5, "DISCHARGE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_15

    :cond_56
    const/4 v10, 0x2

    goto :goto_15

    :sswitch_1a
    const-string v5, "MALARIA_EXAMINE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    goto :goto_15

    :cond_57
    const/4 v10, 0x1

    goto :goto_15

    :sswitch_1b
    const-string v5, "ASHA_SAM_SCREENING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    goto :goto_15

    :cond_58
    const/4 v10, 0x0

    :goto_15
    const-string v5, ","

    const-string v11, ""

    const-string v12, "2"

    const-string v13, "state"

    const-string v6, "motherId"

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_6b

    .line 949
    :pswitch_0
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 950
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "womanCategory"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncEligibleSchemes()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_59
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    const-string v3, "namoshreeRejectionReason"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesByField(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 953
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedMo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 954
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectionCmtMo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    if-eqz v2, :cond_5a

    .line 955
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectionCmtMo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    :cond_5a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 956
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectedDist()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 957
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectionCmtDist()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    if-eqz v2, :cond_5c

    .line 958
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsRejectionCmtDist()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 959
    :cond_5b
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "documentSubmittedEarlier"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_5c
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastNsServiceDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastNsServiceDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5d

    .line 963
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastNsServiceDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 965
    :cond_5d
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 969
    :pswitch_1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "veryHighRiskPregnantWomanFeature"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastVhrpwServiceDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastVhrpwServiceDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5e

    .line 971
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastVhrpwServiceDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 973
    :cond_5e
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 1506
    :pswitch_2
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveFamilyMembersContactListByMember(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Not available"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 1511
    :cond_5f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1512
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_60

    .line 1513
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    :cond_60
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    .line 1520
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1524
    :cond_61
    :goto_17
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "contactDetails"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 1527
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1528
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v27

    .line 1527
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    :pswitch_3
    move-object/from16 v10, v27

    .line 545
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 546
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v7, v26

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "lastLmp"

    invoke-interface {v2, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_62
    move-object/from16 v7, v26

    .line 548
    :goto_18
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 549
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "marriageYear"

    invoke-interface {v2, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_63
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 553
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x1

    .line 554
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 555
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v11

    .line 556
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 557
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " years"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "ageAtWedding"

    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_64
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_65

    .line 561
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "familyPlanningMethod"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_65
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 564
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v11, "dateOfWedding"

    invoke-interface {v2, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "dateOfWeddingDisplay"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_66
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 569
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "currentGravida"

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "defaultGravida"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 572
    :cond_67
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "currentGravida"

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "defaultGravida"

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :goto_19
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v5, v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-direct {v1, v2, v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getMembersLessThan20(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    .line 577
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    .line 578
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "membersUnder20Available"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v25

    goto :goto_1a

    .line 580
    :cond_68
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "membersUnder20Available"

    move-object/from16 v9, v25

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :goto_1a
    :try_start_a
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "totalLivingChildren"

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 585
    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 586
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 587
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, v24

    invoke-virtual {v5, v11, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 588
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, v23

    invoke-virtual {v5, v12, v7}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 589
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v7, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v5, v13, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v14

    .line 585
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 584
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "totalMaleChildren"

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 592
    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 593
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 594
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v7, "M"

    invoke-virtual {v5, v10, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 595
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 596
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 597
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v7, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v5, v13, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v14

    .line 592
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 591
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "totalFemaleChildren"

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 600
    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 601
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 602
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 603
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 604
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 605
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v7, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v5, v13, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v14

    .line 600
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 599
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string v3, "dob"

    const/4 v5, 0x0

    .line 608
    invoke-virtual {v2, v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 609
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 610
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 611
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 612
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v2, v13, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v2, :cond_f2

    .line 615
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "latestChildName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "latestChildAge"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 618
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "latestChildGender"

    const-string v4, "Male"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 619
    :cond_69
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 620
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "latestChildGender"

    const-string v4, "Female"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_6b

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 624
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6b

    :pswitch_4
    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object/from16 v9, v25

    move-object/from16 v7, v26

    move-object/from16 v10, v27

    .line 978
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbsagTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 979
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "hbsagTest"

    move-object/from16 v23, v3

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbsagTest()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_6a
    move-object/from16 v23, v3

    .line 982
    :goto_1b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 983
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pregRegistrationDate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEarlyRegistration()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 985
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "earlyRegistration"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 987
    :cond_6b
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "earlyRegistration"

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    :cond_6c
    :goto_1c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAncVisitDates()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 992
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAncVisitDates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    array-length v4, v2

    move-object/from16 v25, v9

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1d
    if-ge v9, v4, :cond_6e

    move/from16 v19, v4

    aget-object v4, v2, v9

    move-object/from16 v27, v10

    .line 997
    const-string v10, "Visit "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v7, 0x1

    .line 998
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    const-string v7, " - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    add-int/lit8 v7, v18, 0x1

    .line 1002
    array-length v4, v2

    if-eq v7, v4, :cond_6d

    .line 1003
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v7

    move v7, v10

    move/from16 v4, v19

    move-object/from16 v10, v27

    goto :goto_1d

    :cond_6e
    move-object/from16 v27, v10

    .line 1006
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ancDetails"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_6f
    move-object/from16 v25, v9

    move-object/from16 v27, v10

    .line 1009
    :goto_1e
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v4, :cond_70

    aget-object v5, v3, v9

    .line 1013
    :try_start_b
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    .line 1014
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const-string v10, "idOfValue"

    invoke-virtual {v7, v10, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_20

    :catch_a
    move-exception v0

    move-object v5, v0

    .line 1017
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 1020
    :cond_70
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "previousIllness"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 1022
    :cond_71
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "previousIllness"

    const-string v4, "None"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :goto_21
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 1026
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "immunisationGiven"

    invoke-direct {v1, v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getImmunisationGivenString(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    :cond_72
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1030
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "highRiskConditions"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 1032
    :cond_73
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "highRiskConditions"

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :goto_22
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsVeryHighRiskCase()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    move-object/from16 v3, v23

    goto :goto_23

    :cond_74
    move-object/from16 v3, v25

    :goto_23
    const-string v4, "veryHighRiskPregnantWoman"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :try_start_c
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "totalLivingChildren"

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 1038
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1039
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1040
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1041
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v4, v13, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v4

    .line 1038
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1037
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "totalMaleChildren"

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 1044
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1045
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "M"

    move-object/from16 v10, v27

    invoke-virtual {v4, v10, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1046
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1047
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1048
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v4, v13, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v4

    .line 1044
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "totalFemaleChildren"

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 1051
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1052
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    move-object/from16 v5, v25

    invoke-virtual {v4, v10, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1053
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1054
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1055
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v4, v13, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v4

    .line 1051
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_6b

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 1057
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6b

    :pswitch_5
    const/4 v4, 0x0

    .line 1486
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    .line 1487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1489
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    const-string v8, "-1"

    const-string v9, "-Select-"

    invoke-direct {v7, v8, v9, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_76

    .line 1492
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_75

    aget-object v7, v2, v5

    .line 1493
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 1495
    :cond_75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1496
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 1497
    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 1498
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 1499
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1502
    :cond_76
    sput-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->givenVaccinesToChild:Ljava/util/List;

    goto/16 :goto_6b

    :pswitch_6
    move-object/from16 v7, v26

    .line 1327
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 1328
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deliveryDateDisplay"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deliveryDate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    if-eqz p4, :cond_78

    .line 1333
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "serviceNumber"

    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getCustomField()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_78
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncIfa()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncIfa()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_79

    .line 1337
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncIfa()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pncIfa"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    :cond_79
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDeliveryPlace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 1341
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "deliveryPlace"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDeliveryPlace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    :cond_7a
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTypeOfDelivery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 1344
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "typeOfDelivery"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTypeOfDelivery()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    :cond_7b
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbigGiven()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 1347
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbigGiven()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hbigGiven"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    :cond_7c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1350
    :cond_7d
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCurrentFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7f

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCurrentFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1351
    :cond_7e
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "isFpMethodAvailable"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_7f
    :try_start_d
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 1355
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1356
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    .line 1358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, -0x3c

    const/4 v5, 0x5

    .line 1359
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 1360
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1362
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_80
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1363
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_80

    .line 1364
    invoke-virtual {v10, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_80

    if-eqz v4, :cond_81

    .line 1365
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 1367
    :cond_81
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "childDOB"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "latestChildGender"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto :goto_26

    :cond_82
    if-eqz v4, :cond_83

    .line 1373
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 1374
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "childBirthWeight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1376
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Kgs"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1374
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_27

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 1380
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    .line 1383
    :cond_83
    :goto_27
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncCalcium()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncCalcium()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_84

    .line 1384
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncCalcium()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pncCalcium"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    :cond_84
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncStshTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncStshTest()Ljava/lang/String;

    move-result-object v2

    const-string v3, "REACTIVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1388
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ancStsh"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncStshTest()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    :cond_85
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncStshTest()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncStshTest()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 1392
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "stsh"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 1393
    :cond_86
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncStshTest()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_87

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getPncStshTest()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_87

    .line 1394
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "stsh"

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    :cond_87
    :goto_28
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1398
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "tuberculosis"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 1399
    :cond_88
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_89

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_89

    .line 1400
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "tuberculosis"

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    :cond_89
    :goto_29
    :try_start_e
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 1405
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 1406
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v2, v13, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 1409
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_90

    .line 1410
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1411
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1412
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, -0x3c

    const/4 v8, 0x5

    .line 1413
    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 1414
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1415
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1420
    :cond_8b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8f

    .line 1421
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "deliveryDateDisplay"

    const/4 v5, 0x0

    .line 1422
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1421
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "deliveryDate"

    const/4 v5, 0x0

    .line 1424
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1423
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-nez v9, :cond_8d

    .line 1429
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "uniqueHealthIdChild"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "childName"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "immunisationGivenString"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "immunisationGivenPnc"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getVaccineNamesFromImmunizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_8c

    .line 1435
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8c

    .line 1436
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "remainingVaccines"

    .line 1437
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "["

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1436
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    :cond_8c
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "brnNumber"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    .line 1441
    :cond_8d
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uniqueHealthIdChild"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "immunisationGivenString"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "immunisationGivenPnc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getVaccineNamesFromImmunizationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 1446
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8e

    .line 1447
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remainingVaccines"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1448
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "["

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1447
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    :cond_8e
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brnNumber"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2b

    .line 1456
    :cond_8f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    goto/16 :goto_6b

    :cond_90
    const/4 v2, 0x0

    .line 1458
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_d

    goto/16 :goto_6b

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 1461
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6b

    :pswitch_7
    move-object/from16 p3, v11

    move-object/from16 v4, v23

    move-object/from16 v2, v24

    move-object/from16 v7, v26

    move-object/from16 v10, v27

    move-object/from16 v23, v3

    move-object/from16 v3, v25

    .line 631
    :try_start_f
    iget-object v11, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_29
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_28

    move-object/from16 v24, v12

    :try_start_10
    const-string v12, "key"
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_27
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_10} :catch_26

    move-object/from16 v25, v9

    :try_start_11
    const-string v9, "featuresList"

    invoke-interface {v11, v12, v9}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_11} :catch_24

    if-eqz v9, :cond_91

    .line 632
    :try_start_12
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_91

    const/4 v11, 0x0

    .line 633
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 634
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v11, "ANC_PLACE_OF_DELIVERY"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 635
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "getHealthInfra"

    const-string v12, "ANC_PLACE_OF_DELIVERY"

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_2f

    :catch_e
    move-exception v0

    goto :goto_2d

    :catch_f
    move-exception v0

    :goto_2d
    move-object v2, v0

    move-object v11, v14

    move-object v9, v15

    :goto_2e
    move-object/from16 v6, v25

    goto/16 :goto_44

    .line 638
    :cond_91
    :goto_2f
    :try_start_13
    const-string v9, "01/04/2024"

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 639
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "lmpDate"

    .line 640
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_25
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_13} :catch_24

    if-eqz v11, :cond_92

    .line 644
    :try_start_14
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_92

    .line 645
    new-instance v12, Ljava/util/Date;
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_14} :catch_12

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    :try_start_15
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 646
    invoke-virtual {v12, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_15} :catch_10

    const/4 v11, 0x1

    xor-int/2addr v9, v11

    goto :goto_32

    :catch_10
    move-exception v0

    goto :goto_31

    :catch_11
    move-exception v0

    goto :goto_31

    :catch_12
    move-exception v0

    goto :goto_30

    :catch_13
    move-exception v0

    :goto_30
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    :goto_31
    move-object v2, v0

    move-object/from16 v6, v25

    move-object/from16 v11, v26

    move-object/from16 v9, v27

    goto/16 :goto_44

    :cond_92
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const/4 v9, 0x0

    .line 649
    :goto_32
    :try_start_16
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "isLmpValidForJsy"

    .line 651
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    .line 649
    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getUsgTestCount()Ljava/lang/Integer;

    move-result-object v9
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_23
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_16} :catch_22

    if-eqz v9, :cond_93

    :try_start_17
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getUsgTestCount()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_17
    .catch Ljava/sql/SQLException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_17} :catch_10

    goto :goto_33

    :cond_93
    const/4 v9, 0x0

    .line 655
    :goto_33
    :try_start_18
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "usgTestCount"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getUsgTestDate()Ljava/lang/Long;

    move-result-object v9
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_23
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_18} :catch_22

    if-eqz v9, :cond_94

    .line 659
    :try_start_19
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "usgTestDate"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_19} :catch_10

    .line 664
    :cond_94
    :try_start_1a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAncVisitDates()Ljava/lang/String;

    move-result-object v9
    :try_end_1a
    .catch Ljava/sql/SQLException; {:try_start_1a .. :try_end_1a} :catch_23
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1a} :catch_22

    if-eqz v9, :cond_95

    :try_start_1b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAncVisitDates()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_95

    .line 665
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAncVisitDates()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 666
    array-length v11, v9

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 667
    array-length v14, v9

    sub-int/2addr v14, v12

    aget-object v9, v9, v14

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_1b} :catch_10

    goto :goto_34

    :cond_95
    move-object/from16 v9, p3

    const/4 v11, 0x1

    .line 669
    :goto_34
    :try_start_1c
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "visitNumber"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "lastAncServiceDate"

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "totalLivingChildren"

    iget-object v12, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 673
    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 674
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v6, v14}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 675
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v2, v14}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 676
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v4, v14}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 677
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    sget-object v14, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v12, v13, v14}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v14

    .line 673
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 672
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "totalMaleChildren"

    iget-object v12, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 680
    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 681
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v6, v14}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 682
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    const-string v14, "M"

    invoke-virtual {v12, v10, v14}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 683
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v2, v14}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 684
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v4, v14}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 685
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    sget-object v14, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v12, v13, v14}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v14

    .line 680
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 679
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "totalFemaleChildren"

    iget-object v12, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    .line 688
    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 689
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v6, v14}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 690
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6, v10, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 691
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 692
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 693
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v4, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->invalidStates:Ljava/util/List;

    invoke-virtual {v2, v13, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v12

    .line 688
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-interface {v9, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2
    :try_end_1c
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_1c} :catch_23
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_1c} :catch_22

    if-eqz v2, :cond_97

    .line 696
    :try_start_1d
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 697
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 698
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x1

    .line 699
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 700
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v6

    .line 701
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 702
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "ageAtWedding"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_96
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 707
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x1

    .line 708
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 710
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 711
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 712
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 713
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "ageAtWedding"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/sql/SQLException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_1d} :catch_10

    .line 717
    :cond_97
    :try_start_1e
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;
    :try_end_1e
    .catch Ljava/sql/SQLException; {:try_start_1e .. :try_end_1e} :catch_23
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_1e} :catch_22

    if-eqz v2, :cond_98

    .line 718
    :try_start_1f
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 719
    sget-object v2, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 720
    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 721
    const-string v6, "Latitude : %s\nLongitude : %s"
    :try_end_1f
    .catch Ljava/sql/SQLException; {:try_start_1f .. :try_end_1f} :catch_11
    .catch Ljava/text/ParseException; {:try_start_1f .. :try_end_1f} :catch_10

    const/4 v9, 0x2

    :try_start_20
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v4, v9, v2
    :try_end_20
    .catch Ljava/sql/SQLException; {:try_start_20 .. :try_end_20} :catch_15
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_20} :catch_14

    :try_start_21
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 722
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "currentLocationLatLng"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/sql/SQLException; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/text/ParseException; {:try_start_21 .. :try_end_21} :catch_10

    goto :goto_35

    :catch_14
    move-exception v0

    goto/16 :goto_31

    :catch_15
    move-exception v0

    goto/16 :goto_31

    .line 725
    :cond_98
    :goto_35
    :try_start_22
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v4, v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-direct {v1, v2, v4}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getMembersLessThan20(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    .line 727
    invoke-direct {v1, v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->checkIfMotherWasPregnantWithinLast3Years(Lcom/argusoft/sewa/android/app/model/MemberBean;)Z

    move-result v2
    :try_end_22
    .catch Ljava/sql/SQLException; {:try_start_22 .. :try_end_22} :catch_23
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_22} :catch_22

    if-eqz v2, :cond_99

    .line 728
    :try_start_23
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "pregnantLast3Yrs"
    :try_end_23
    .catch Ljava/sql/SQLException; {:try_start_23 .. :try_end_23} :catch_19
    .catch Ljava/text/ParseException; {:try_start_23 .. :try_end_23} :catch_18

    move-object/from16 v9, v27

    :try_start_24
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/sql/SQLException; {:try_start_24 .. :try_end_24} :catch_17
    .catch Ljava/text/ParseException; {:try_start_24 .. :try_end_24} :catch_16

    move-object/from16 v11, v26

    goto :goto_38

    :catch_16
    move-exception v0

    goto :goto_37

    :catch_17
    move-exception v0

    goto :goto_37

    :catch_18
    move-exception v0

    goto :goto_36

    :catch_19
    move-exception v0

    :goto_36
    move-object/from16 v9, v27

    :goto_37
    move-object v2, v0

    move-object/from16 v6, v25

    move-object/from16 v11, v26

    goto/16 :goto_44

    :cond_99
    move-object/from16 v9, v27

    .line 730
    :try_start_25
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "pregnantLast3Yrs"
    :try_end_25
    .catch Ljava/sql/SQLException; {:try_start_25 .. :try_end_25} :catch_21
    .catch Ljava/text/ParseException; {:try_start_25 .. :try_end_25} :catch_20

    move-object/from16 v11, v26

    :try_start_26
    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :goto_38
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Ljava/sql/SQLException; {:try_start_26 .. :try_end_26} :catch_1f
    .catch Ljava/text/ParseException; {:try_start_26 .. :try_end_26} :catch_1e

    if-eqz v2, :cond_9e

    .line 734
    :try_start_27
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TT_BOOSTER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 735
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "tt"

    const-string v6, "TT_BOOSTER"

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 736
    :cond_9a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TT2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 737
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "tt"

    const-string v6, "TT2"

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 738
    :cond_9b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TT1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 739
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "tt"

    const-string v6, "TT1"

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_9c
    :goto_39
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TT1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 743
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 744
    array-length v4, v2

    const/4 v6, 0x0

    :goto_3a
    if-ge v6, v4, :cond_9e

    aget-object v10, v2, v6

    .line 745
    const-string v12, "#"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    .line 746
    aget-object v13, v10, v12

    const-string v12, "TT1"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 747
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "tt1GivenOn"

    const/4 v14, 0x1

    aget-object v10, v10, v14

    .line 748
    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 747
    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/sql/SQLException; {:try_start_27 .. :try_end_27} :catch_1b
    .catch Ljava/text/ParseException; {:try_start_27 .. :try_end_27} :catch_1a

    :cond_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :catch_1a
    move-exception v0

    goto :goto_3b

    :catch_1b
    move-exception v0

    :goto_3b
    move-object v2, v0

    goto/16 :goto_2e

    .line 754
    :cond_9e
    :try_start_28
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v2
    :try_end_28
    .catch Ljava/sql/SQLException; {:try_start_28 .. :try_end_28} :catch_1f
    .catch Ljava/text/ParseException; {:try_start_28 .. :try_end_28} :catch_1e

    if-eqz v2, :cond_9f

    .line 755
    :try_start_29
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentGravida"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "defaultGravida"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/sql/SQLException; {:try_start_29 .. :try_end_29} :catch_1b
    .catch Ljava/text/ParseException; {:try_start_29 .. :try_end_29} :catch_1a

    move-object/from16 v6, v25

    goto/16 :goto_45

    .line 758
    :cond_9f
    :try_start_2a
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentGravida"
    :try_end_2a
    .catch Ljava/sql/SQLException; {:try_start_2a .. :try_end_2a} :catch_1f
    .catch Ljava/text/ParseException; {:try_start_2a .. :try_end_2a} :catch_1e

    move-object/from16 v6, v25

    :try_start_2b
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "defaultGravida"

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/sql/SQLException; {:try_start_2b .. :try_end_2b} :catch_1d
    .catch Ljava/text/ParseException; {:try_start_2b .. :try_end_2b} :catch_1c

    goto :goto_45

    :catch_1c
    move-exception v0

    goto :goto_43

    :catch_1d
    move-exception v0

    goto :goto_43

    :catch_1e
    move-exception v0

    goto :goto_3f

    :catch_1f
    move-exception v0

    goto :goto_3f

    :catch_20
    move-exception v0

    goto :goto_3c

    :catch_21
    move-exception v0

    :goto_3c
    move-object/from16 v6, v25

    move-object/from16 v11, v26

    goto :goto_43

    :catch_22
    move-exception v0

    goto :goto_3d

    :catch_23
    move-exception v0

    :goto_3d
    move-object/from16 v6, v25

    move-object/from16 v11, v26

    move-object/from16 v9, v27

    goto :goto_43

    :catch_24
    move-exception v0

    goto :goto_3e

    :catch_25
    move-exception v0

    :goto_3e
    move-object v11, v14

    move-object v9, v15

    :goto_3f
    move-object/from16 v6, v25

    goto :goto_43

    :catch_26
    move-exception v0

    goto :goto_40

    :catch_27
    move-exception v0

    :goto_40
    move-object v6, v9

    goto :goto_42

    :catch_28
    move-exception v0

    goto :goto_41

    :catch_29
    move-exception v0

    :goto_41
    move-object v6, v9

    move-object/from16 v24, v12

    :goto_42
    move-object v11, v14

    move-object v9, v15

    :goto_43
    move-object v2, v0

    .line 763
    :goto_44
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    :goto_45
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_46
    if-ge v7, v5, :cond_a0

    aget-object v10, v4, v7

    .line 770
    :try_start_2c
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    .line 771
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    const-string v13, "idOfValue"

    invoke-virtual {v12, v13, v10}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 770
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/sql/SQLException; {:try_start_2c .. :try_end_2c} :catch_2a

    goto :goto_47

    :catch_2a
    move-exception v0

    move-object v10, v0

    .line 774
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 777
    :cond_a0
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "previousIllness"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 779
    :cond_a1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "previousIllness"

    const-string v5, "None"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :goto_48
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsVeryHighRiskCase()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    move-object/from16 v3, v23

    :cond_a2
    const-string v4, "veryHighRiskPregnantWoman"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a3

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 784
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "eligibilityCriteria"

    const-string v4, "Family is BPL"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 786
    :cond_a3
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "eligibilityCriteria"

    const-string v4, "Family is not BPL"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :goto_49
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 790
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "jsyBeneficiary"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 791
    :cond_a4
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a5

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a5

    .line 792
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "jsyBeneficiary"

    move-object/from16 v4, v24

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_a5
    :goto_4a
    move-object/from16 v4, v24

    .line 795
    :goto_4b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a6

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 796
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "jsyPayment"

    const-string v5, "yes"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_a6
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getKpsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getKpsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 800
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "kpsyBeneficiary"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 801
    :cond_a7
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getKpsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a8

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getKpsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 802
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "kpsyBeneficiary"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_a8
    :goto_4c
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIayBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a9

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIayBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 806
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "iayBeneficiary"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 807
    :cond_a9
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIayBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_aa

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIayBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 808
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "iayBeneficiary"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_aa
    :goto_4d
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChiranjeeviYojnaBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_ab

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChiranjeeviYojnaBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 812
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "chiranjeeviBeneficiary"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 813
    :cond_ab
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChiranjeeviYojnaBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_ac

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getChiranjeeviYojnaBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_ac

    .line 814
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "chiranjeeviBeneficiary"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :cond_ac
    :goto_4e
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_ae

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_ae

    .line 818
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "curPregRegDate"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEarlyRegistration()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 820
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "earlyRegistration"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 822
    :cond_ad
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "earlyRegistration"

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_ae
    :goto_4f
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_af

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 827
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "highRiskConditions"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 829
    :cond_af
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "highRiskConditions"

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :goto_50
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b0

    .line 833
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "immunisationGiven"

    invoke-direct {v1, v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getImmunisationGivenString(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_b0
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getPreviousPregnancyComplication()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b1

    .line 837
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "previousPregnancyComplication"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getPreviousPregnancyComplication()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    const/4 v2, 0x0

    .line 840
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 842
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbsagTest()Ljava/lang/String;

    move-result-object v2

    const-string v5, "NOT_DONE"

    if-eqz v2, :cond_b2

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbsagTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 843
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "hbsagTest"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHbsagTest()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_b2
    const/4 v2, 0x1

    .line 845
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 848
    :goto_51
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getJsyPaymentDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_b3

    .line 849
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "isJsyPaymentDateAvailable"

    const-string v8, "yes"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_b3
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHivTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b4

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHivTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 853
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "hivTest"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHivTest()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_b4
    const/4 v2, 0x1

    .line 855
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 858
    :goto_52
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVdrlTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVdrlTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 859
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "vdrlTest"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVdrlTest()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_b5
    const/4 v2, 0x1

    .line 861
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 864
    :goto_53
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSickleCellTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b6

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSickleCellTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 865
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "sickleCellTest"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getSickleCellTest()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_b6
    const/4 v2, 0x1

    .line 867
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 870
    :goto_54
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getThalessemiaTestRes()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b7

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getThalessemiaTestRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 871
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "thalessemiaTest"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getThalessemiaTestRes()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_b7
    const/4 v2, 0x1

    .line 873
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 876
    :goto_55
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemophiliaTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b8

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemophiliaTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 877
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "haemophiliaTest"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHaemophiliaTest()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_b8
    const/4 v2, 0x1

    .line 879
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 882
    :goto_56
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 883
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "pendingTest"

    const-string v7, "true"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_b9
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 887
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "memberHeight"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_ba
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getOgttTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getOgttTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 891
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ogtt"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getOgttTest()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_bb
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncStshTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bc

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncStshTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    .line 895
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "stsh"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncStshTest()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    :cond_bc
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHusbandsBloodGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bd

    .line 899
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "husbandsBloodGroup"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHusbandsBloodGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_bd
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAntiDGiven()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_be

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAntiDGiven()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 903
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "antiD"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "antiDStatus"

    const-string v5, "GIVEN"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 906
    :cond_be
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "antiD"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "antiDStatus"

    const-string v5, "NOT GIVEN"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :goto_57
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_bf

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 912
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "tuberculosis"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 913
    :cond_bf
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_c0

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTbFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 914
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "tuberculosis"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    :cond_c0
    :goto_58
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncAshaMorbidity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f2

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncAshaMorbidity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f2

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    :try_start_2d
    new-instance v3, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$2;

    invoke-direct {v3, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$2;-><init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V

    .line 921
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 922
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncAshaMorbidity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 924
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/MorbidityDataBean;

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 925
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    .line 926
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MorbidityDataBean;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandMorbidityNameAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 928
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2d .. :try_end_2d} :catch_2b

    goto :goto_59

    :catch_2b
    move-exception v0

    move-object v3, v0

    .line 931
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAncAshaMorbidity()Ljava/lang/String;

    move-result-object v3

    .line 933
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 935
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5a
    if-ge v5, v4, :cond_c2

    aget-object v7, v3, v5

    .line 936
    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 937
    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 938
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". "

    .line 939
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 940
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandMorbidityNameAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 941
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c1
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 945
    :cond_c2
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ancMorbAsha"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 1534
    :pswitch_8
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c3

    .line 1535
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1536
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1535
    const-string v4, "genderDisplay"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    :cond_c3
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 1540
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "mobileNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    :pswitch_9
    move-object/from16 v4, v23

    move-object/from16 v7, v26

    .line 1466
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_c4

    .line 1467
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1468
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1467
    const-string v5, "deliveryDateDisplay"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1470
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1469
    const-string v5, "deliveryDate"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    if-eqz p4, :cond_f2

    .line 1472
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 1474
    :try_start_2e
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 1475
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    if-eqz v2, :cond_f2

    .line 1477
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;
    :try_end_2e
    .catch Ljava/sql/SQLException; {:try_start_2e .. :try_end_2e} :catch_2c

    goto/16 :goto_6b

    :catch_2c
    move-exception v0

    move-object v2, v0

    .line 1480
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6b

    :pswitch_a
    move-object/from16 v23, v3

    move-object/from16 v3, v25

    .line 536
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMalariaServiceDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_c5

    .line 537
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMalariaServiceDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "malariaServiceDate"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_c5
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMalariaExamined()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    move-object/from16 v9, v23

    goto :goto_5b

    :cond_c6
    move-object v9, v3

    :goto_5b
    const-string v4, "malariaExamined"

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMalariaTestResult()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    move-object/from16 v3, v23

    :cond_c7
    const-string v4, "malariaTestResult"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    :pswitch_b
    move-object/from16 p3, v11

    move-object v11, v14

    move-object v9, v15

    move-object/from16 v13, v23

    move-object/from16 v12, v26

    move-object/from16 v10, v27

    move-object/from16 v23, v3

    move-object/from16 v3, v25

    .line 1076
    sget-boolean v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    if-eqz v14, :cond_ca

    .line 1077
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersOfFamily:Ljava/util/List;

    .line 1078
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_5c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v22, v14

    move-object/from16 v14, v19

    check-cast v14, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-object/from16 v19, v15

    .line 1079
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 1080
    new-instance v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v5, v14}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    move-object v15, v5

    goto :goto_5d

    :cond_c8
    move-object/from16 v15, v19

    :goto_5d
    move-object/from16 v14, v22

    move-object/from16 v5, v25

    goto :goto_5c

    :cond_c9
    move-object/from16 v25, v5

    move-object/from16 v19, v15

    goto :goto_5f

    :cond_ca
    move-object/from16 v25, v5

    .line 1085
    :try_start_2f
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_cb

    .line 1086
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v14, "actualID"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_2f
    .catch Ljava/sql/SQLException; {:try_start_2f .. :try_end_2f} :catch_2d

    goto :goto_5e

    :cond_cb
    const/4 v5, 0x0

    :goto_5e
    move-object/from16 v19, v5

    goto :goto_5f

    :catch_2d
    move-exception v0

    move-object v5, v0

    .line 1089
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    .line 1092
    :goto_5f
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getPlaceOfBirth()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormsOfPlace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_cc

    .line 1094
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "placeOfBirth"

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    :cond_cc
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_cd

    .line 1099
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v14, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    :cond_cd
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "childFirstName"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ce

    .line 1104
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "familyPhoneNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 1105
    :cond_ce
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_cf

    .line 1107
    :try_start_30
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 1108
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v13, v10}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v5, :cond_cf

    .line 1110
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "familyPhoneNumber"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/sql/SQLException; {:try_start_30 .. :try_end_30} :catch_2e

    goto :goto_60

    :catch_2e
    move-exception v0

    move-object v5, v0

    .line 1113
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v10, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    :cond_cf
    :goto_60
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getLocationByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v5

    .line 1117
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "village"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v5

    .line 1119
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "subCentre"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v5

    .line 1121
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "phc"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getParentLocation(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v13, "taluka"

    invoke-interface {v10, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "brnNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_d0

    .line 1125
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMotherId()Ljava/lang/Long;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    :cond_d0
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getRelationWithIdHolder()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d1

    .line 1128
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "relationWithIdHolder"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getRelationWithIdHolder()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    :cond_d1
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIdType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d2

    .line 1131
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "idType"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIdType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :cond_d2
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIdNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d3

    .line 1134
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "idNumber"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIdNumber()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d3
    if-eqz v19, :cond_d8

    .line 1138
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "phoneNumber"

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "familyPhoneNumber"

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "motherHealthId"

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "motherName"

    invoke-static/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d4

    .line 1143
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    goto :goto_61

    :cond_d4
    move-object/from16 v5, p3

    .line 1144
    :goto_61
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "motherAge"

    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d5

    .line 1146
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 1147
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getListValueById(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    .line 1146
    const-string v10, "educationStatus"

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    :cond_d5
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_d6

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d6

    .line 1150
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    .line 1151
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "monthsOfPregnancy"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :cond_d6
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 1154
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d8

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d8

    .line 1155
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v6, Ljava/util/Date;

    sget-object v10, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v5, v6, v10}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    .line 1156
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v6

    const-class v10, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v5, v6, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 1157
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDeliveryPlace()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d7

    .line 1158
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "deliveryPlace"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getDeliveryPlace()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_d7
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTypeOfDelivery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d8

    .line 1161
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "typeOfDelivery"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getTypeOfDelivery()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_d8
    const-string v5, "AMRUTPAN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 1167
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "missedNotification"

    invoke-interface {v2, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastAmrutpanServiceDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_d9

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastAmrutpanServiceDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v13, 0x0

    cmp-long v2, v5, v13

    if-lez v2, :cond_d9

    .line 1169
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastAmrutpanServiceDate()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_d9
    if-eqz p4, :cond_da

    .line 1170
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getScheduledDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_da

    .line 1171
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getScheduledDate()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 1173
    :cond_da
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_62
    if-eqz p4, :cond_db

    .line 1176
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_db

    .line 1177
    invoke-virtual/range {p4 .. p4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOtherDetails()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->formatAmrutpanNotificationOtherDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    .line 1178
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    if-eqz v2, :cond_db

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentNotificationOtherDetails:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_db

    .line 1179
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "isAmrutpanOtherDetailAvailable"

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    :cond_db
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_dc

    .line 1185
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "birthWeight"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Kgs"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "birthWeightDisplay"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "birthWeightDisplayInGrams"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    :cond_dc
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_dd

    .line 1191
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 1192
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "age"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "childDOB"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v2

    const/4 v4, 0x0

    .line 1195
    aget v5, v2, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-static {v5, v6, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    .line 1197
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "ageDisplay"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_dd
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getComplementaryFeedingStarted()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_de

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getComplementaryFeedingStarted()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1202
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "complimentaryFeeding"

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 1204
    :cond_de
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "complimentaryFeeding"

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :goto_63
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_df

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_df

    .line 1208
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "immunisationGiven"

    invoke-direct {v1, v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->getImmunisationGivenString(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "immunisationGivenString"

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    :cond_df
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_e0

    .line 1214
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e0

    .line 1215
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "["

    move-object/from16 v6, p3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "remainingVaccines"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    :cond_e0
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e2

    .line 1219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, 0x1

    .line 1220
    invoke-virtual {v2, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 1221
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 1222
    invoke-virtual {v2, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 1223
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1224
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "immunisedInTwoYear"

    invoke-virtual {v1, v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->isChildImmunisedInTwoYear(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    :cond_e1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "immunisedInOneYear"

    invoke-virtual {v1, v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->isChildImmunisedInOneYear(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_e2
    :try_start_31
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v4, "key"

    const-string v5, "featuresList"

    invoke-interface {v2, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e3

    .line 1232
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e3

    const/4 v4, 0x0

    .line 1233
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 1234
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CEREBRAL_PALSY_SCREENING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1235
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "cpScreening"

    const-string v5, "CEREBRAL_PALSY_SCREENING"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/sql/SQLException; {:try_start_31 .. :try_end_31} :catch_2f

    goto :goto_64

    :catch_2f
    move-exception v0

    move-object v2, v0

    .line 1239
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    :cond_e3
    :goto_64
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e4

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4

    .line 1243
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "wtGainStatus"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getWtGainStatus()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_e4
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getGivenRUTF()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 1247
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getGivenRUTF()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "givenRUTF"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    :cond_e5
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_e7

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    .line 1251
    new-instance v2, Ljava/util/HashSet;

    sget-object v4, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->CEREBRAL_PALSY_QUESTION_IDS_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1252
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1254
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e6
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1255
    sget-object v5, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->CEREBRAL_PALSY_QUESTION_IDS_MAP:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_e6

    .line 1257
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 1262
    :cond_e7
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e8

    .line 1263
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "cpStatus"

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    :cond_e8
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastSamScreeningDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_ed

    move-object/from16 v2, v18

    const/4 v4, 0x2

    .line 1267
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1269
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastSamScreeningDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1270
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1271
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x3

    if-lt v6, v7, :cond_e9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x8

    if-gt v6, v7, :cond_e9

    .line 1272
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x3

    if-lt v2, v7, :cond_e9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x8

    if-gt v2, v7, :cond_e9

    .line 1273
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "samScreeningDone"

    move-object/from16 v7, v23

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_e9
    move-object/from16 v7, v23

    .line 1274
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0x9

    if-ge v6, v9, :cond_ea

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    if-gt v6, v4, :cond_eb

    goto :goto_66

    :cond_ea
    const/4 v4, 0x2

    .line 1275
    :goto_66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x9

    if-ge v2, v6, :cond_ec

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gt v2, v4, :cond_eb

    goto :goto_67

    .line 1278
    :cond_eb
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "samScreeningDone"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 1276
    :cond_ec
    :goto_67
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "samScreeningDone"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    :goto_68
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastSamScreeningDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastSamScreeningDate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 1284
    :cond_ed
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "samScreeningDone"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :goto_69
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1288
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ef

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ef

    .line 1289
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1290
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v25

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :goto_6a
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 1292
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1293
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 1295
    :try_start_32
    aget-object v4, v4, v7

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_32 .. :try_end_32} :catch_30

    goto :goto_6a

    :catch_30
    move-exception v0

    move-object v4, v0

    .line 1297
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    .line 1301
    :cond_ee
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_ef

    .line 1302
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    .line 1306
    :cond_ef
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f0

    .line 1307
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f0

    .line 1309
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "religion"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_f0
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f1

    .line 1313
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f1

    .line 1315
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "caste"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    :cond_f1
    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastTHRServiceDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 1320
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastTHRServiceDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastTHRServiceDate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    :cond_f2
    :goto_6b
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 154
    :cond_f3
    :try_start_33
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const-class v3, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-static {v2, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_33
    .catch Ljava/sql/SQLException; {:try_start_33 .. :try_end_33} :catch_31

    goto :goto_6c

    :catch_31
    move-exception v0

    move-object v2, v0

    .line 156
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_6c
    new-instance v2, Lcom/argusoft/sewa/android/app/exception/DataException;

    const-string v3, "Data Exception"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/argusoft/sewa/android/app/exception/DataException;-><init>(Ljava/lang/String;I)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76aa913e -> :sswitch_1b
        -0x749d10bd -> :sswitch_1a
        -0x618d6b5e -> :sswitch_19
        -0x5c5599c4 -> :sswitch_18
        -0x47046c8c -> :sswitch_17
        -0x2f4bc9e0 -> :sswitch_16
        -0x27982d75 -> :sswitch_15
        -0x25d13468 -> :sswitch_14
        -0x938b5b4 -> :sswitch_13
        -0x9387d65 -> :sswitch_12
        -0x9386870 -> :sswitch_11
        -0x93862df -> :sswitch_10
        -0x1287f8b -> :sswitch_f
        0x1141b -> :sswitch_e
        0x12f9a -> :sswitch_d
        0x2cdc84 -> :sswitch_c
        0x4532ffe -> :sswitch_b
        0x4dddde7 -> :sswitch_a
        0x56eac22 -> :sswitch_9
        0x56ee471 -> :sswitch_8
        0x7e11a00 -> :sswitch_7
        0xa0c8401 -> :sswitch_6
        0x4aea1e15 -> :sswitch_5
        0x650ef36a -> :sswitch_4
        0x662dd756 -> :sswitch_3
        0x73ddf68e -> :sswitch_2
        0x7b92d11a -> :sswitch_1
        0x7b92d26f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method public setMetaDataForVBDSForms(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/Context;)V
    .locals 7

    .line 3469
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3470
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 3471
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 3472
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3473
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3474
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3476
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "serviceDate"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3478
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "locationId"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 3481
    sput-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 3482
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyActualId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "familyId"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3483
    const-string p1, "memberActualId"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3484
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const-string v2, "%s (%s)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "memberName"

    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3486
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    aput-object v6, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "nameForLog"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "memberFullName"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "genderDisplay"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3489
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dobDisplay"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3490
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "uniqueHealthId"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
