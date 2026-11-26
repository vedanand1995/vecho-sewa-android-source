.class public Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;
.super Ljava/lang/Object;
.source "ValidationFormulaUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aadhaarNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1659
    :cond_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 1661
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1662
    const-string v0, "aadhaarNumber"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1664
    :catch_0
    const-string v0, "Invalid Aadhaar data"

    return-object v0

    .line 1667
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1670
    :goto_0
    const-string v2, "^[0-9]{12}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1671
    const-string v0, "Aadhaar ID must contain 12 digit numbers only"

    return-object v0

    :cond_2
    const/16 v2, 0xa

    .line 1674
    new-array v4, v2, [I

    fill-array-data v4, :array_0

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    new-array v6, v2, [I

    fill-array-data v6, :array_2

    new-array v7, v2, [I

    fill-array-data v7, :array_3

    new-array v8, v2, [I

    fill-array-data v8, :array_4

    new-array v9, v2, [I

    fill-array-data v9, :array_5

    new-array v10, v2, [I

    fill-array-data v10, :array_6

    new-array v11, v2, [I

    fill-array-data v11, :array_7

    new-array v12, v2, [I

    fill-array-data v12, :array_8

    new-array v13, v2, [I

    fill-array-data v13, :array_9

    new-array v14, v2, [[I

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v4, 0x1

    aput-object v5, v14, v4

    const/4 v5, 0x2

    aput-object v6, v14, v5

    const/4 v6, 0x3

    aput-object v7, v14, v6

    const/4 v7, 0x4

    aput-object v8, v14, v7

    const/4 v8, 0x5

    aput-object v9, v14, v8

    const/4 v9, 0x6

    aput-object v10, v14, v9

    const/4 v10, 0x7

    aput-object v11, v14, v10

    const/16 v11, 0x8

    aput-object v12, v14, v11

    const/16 v12, 0x9

    aput-object v13, v14, v12

    .line 1687
    new-array v12, v2, [I

    fill-array-data v12, :array_a

    new-array v13, v2, [I

    fill-array-data v13, :array_b

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    new-array v10, v2, [I

    fill-array-data v10, :array_d

    new-array v9, v2, [I

    fill-array-data v9, :array_e

    new-array v8, v2, [I

    fill-array-data v8, :array_f

    new-array v7, v2, [I

    fill-array-data v7, :array_10

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    new-array v11, v11, [[I

    aput-object v12, v11, v15

    aput-object v13, v11, v4

    aput-object v1, v11, v5

    aput-object v10, v11, v6

    const/4 v1, 0x4

    aput-object v9, v11, v1

    const/4 v1, 0x5

    aput-object v8, v11, v1

    const/4 v1, 0x6

    aput-object v7, v11, v1

    const/4 v1, 0x7

    aput-object v2, v11, v1

    .line 1699
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v15, v1, :cond_3

    .line 1701
    aget-object v2, v14, v2

    rem-int/lit8 v5, v15, 0x8

    aget-object v5, v11, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v7, v1, v15

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget v5, v5, v6

    aget v2, v2, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 1705
    const-string v0, "Please enter valid aadhaar number"

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x6
        0x7
        0x8
        0x9
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
        0x4
        0x0
        0x1
        0x7
        0x8
        0x9
        0x5
        0x6
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
        0x0
        0x1
        0x2
        0x8
        0x9
        0x5
        0x6
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x0
        0x1
        0x2
        0x3
        0x9
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x9
        0x8
        0x7
        0x6
        0x0
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x5
        0x9
        0x8
        0x7
        0x1
        0x0
        0x4
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x6
        0x5
        0x9
        0x8
        0x2
        0x1
        0x0
        0x4
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x7
        0x6
        0x5
        0x9
        0x3
        0x2
        0x1
        0x0
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x5
        0x7
        0x6
        0x2
        0x8
        0x3
        0x0
        0x9
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x8
        0x0
        0x3
        0x7
        0x9
        0x6
        0x1
        0x4
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x8
        0x9
        0x1
        0x6
        0x0
        0x4
        0x3
        0x5
        0x2
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x9
        0x4
        0x5
        0x3
        0x1
        0x2
        0x6
        0x8
        0x7
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x2
        0x8
        0x6
        0x5
        0x7
        0x3
        0x9
        0x0
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x7
        0x9
        0x3
        0x8
        0x0
        0x6
        0x4
        0x1
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x0
        0x4
        0x6
        0x9
        0x1
        0x3
        0x2
        0x5
        0x8
    .end array-data
.end method

.method public static allMembersArchiveCheck([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 970
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 971
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyFound"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 972
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "familyId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_5

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 977
    :goto_0
    sget v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_4

    if-nez v0, :cond_2

    .line 979
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 981
    :cond_2
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 983
    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_4
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v1, p0, :cond_5

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_5

    .line 989
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static alphanumericWithSpace(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isAlphaNumericWithSpace(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "Must alphanumeric and space"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static between([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 695
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 699
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 705
    :try_start_1
    aget-object p0, p0, v2

    const-string v3, ","

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 706
    array-length v3, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 708
    :try_start_2
    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 709
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move p0, v1

    move v1, v3

    goto :goto_1

    :catch_1
    :cond_0
    const/4 p0, 0x0

    .line 715
    :goto_1
    :try_start_3
    const-string v2, "GreaterThanEq"

    invoke-static {v2, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LessThanEq"

    invoke-static {v1, p1, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    .line 716
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 717
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static checkConsumedSachets([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 1413
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1414
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1415
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 1416
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkDate([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1613
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1616
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1619
    array-length p1, p0

    const/4 v2, 0x4

    if-lt p1, v2, :cond_2

    const/4 p1, 0x2

    .line 1620
    aget-object p1, p0, p1

    const-string v3, "loop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x3

    if-eqz p1, :cond_1

    .line 1621
    aget-object p1, p0, v3

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    .line 1623
    :cond_1
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p2, p0, v3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1625
    new-instance p2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_4

    .line 1628
    array-length p1, p0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 1629
    aget-object p1, p0, v2

    const-string v3, "Add"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eqz p1, :cond_3

    .line 1630
    new-instance p1, Ljava/util/Date;

    .line 1631
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aget-object p2, p0, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object v8, p0, v4

    .line 1632
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, p0, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1630
    invoke-static {v6, v7, p2, v8, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addYearsMonthsDays(JIII)J

    move-result-wide v6

    invoke-direct {p1, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object p2, p1

    .line 1634
    :cond_3
    aget-object p1, p0, v2

    const-string v2, "Sub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1635
    new-instance p1, Ljava/util/Date;

    .line 1636
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aget-object p2, p0, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit8 p2, p2, -0x1

    aget-object v2, p0, v4

    .line 1637
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    .line 1635
    invoke-static {v6, v7, p2, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addYearsMonthsDays(JIII)J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object p2, p1

    .line 1641
    :cond_4
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 1642
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x1

    .line 1648
    aget-object v2, p0, v1

    const-string v3, "after"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    aget-object p0, p0, v1

    const-string v1, "before"

    .line 1649
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1650
    :cond_7
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    const-string p0, "Selected date is not valid"

    :goto_1
    return-object p0

    :cond_9
    :goto_2
    return-object v0
.end method

.method public static checkDaysGapDeliveryDate([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 1205
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1206
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1209
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "healthInfrastructureTypeId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    return-object v2

    .line 1213
    :cond_1
    sget-object p0, Lcom/argusoft/sewa/android/app/constants/RchConstants;->PHI_INSTITUTIONS_TYPE_ID_FOR_2_DAYS_DEL_GAP:Ljava/util/List;

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1214
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1213
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1215
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "deliveryDate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    const/4 v3, 0x5

    neg-int v1, v1

    .line 1218
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    if-eqz p0, :cond_2

    .line 1219
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p0, v0, v3

    if-gez p0, :cond_2

    .line 1220
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static checkEmail([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 814
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/CommonUtil;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid value"

    if-nez v0, :cond_1

    .line 815
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 816
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 820
    :cond_1
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    aget-object v0, p0, v2

    if-eqz v0, :cond_3

    .line 821
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p1, p0, :cond_3

    .line 822
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 823
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkGivenSachets([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 1398
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 1399
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1401
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1402
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, p0, :cond_0

    .line 1403
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 1407
    :cond_1
    const-string p0, "Please enter valid given sachets."

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkHeadMemberAge(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 9

    .line 998
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyFound"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 999
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v3, v1

    .line 1001
    :goto_0
    sget v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_4

    .line 1005
    const-string v4, "dob"

    const-string v5, "memberStatus"

    const-string v6, "familyHeadFlag"

    if-nez v0, :cond_0

    .line 1006
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1007
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1008
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 1010
    :cond_0
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1011
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1012
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    if-nez v5, :cond_1

    if-eqz v6, :cond_1

    .line 1014
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 1015
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v3, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 1020
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, -0x12

    .line 1021
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 1022
    new-instance v2, Ljava/util/Date;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1023
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static checkHofRelationWithGender([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 10

    .line 1426
    array-length v0, p0

    const-string v1, "1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    .line 1428
    aget-object v0, p0, v4

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1429
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1435
    :goto_0
    array-length v4, p0

    if-le v4, v2, :cond_e

    .line 1436
    aget-object v4, p0, v2

    invoke-static {v4, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1437
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1440
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "relationWithHOF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "HUSBAND"

    const-string v8, "WIFE"

    const-string v9, "2"

    if-nez v6, :cond_7

    const-string v6, "ans12"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 1442
    :cond_1
    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FEMALE_RELATION:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->MALE_RELATION:Ljava/util/List;

    .line 1443
    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1444
    :cond_3
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v0, :cond_e

    :goto_1
    if-ge v3, p2, :cond_e

    .line 1449
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "familyHeadFlag"

    .line 1450
    invoke-static {v4, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1449
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1452
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1453
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v2

    .line 1454
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1453
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1455
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1456
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1457
    :cond_5
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 1458
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1466
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FEMALE_RELATION:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1467
    :cond_8
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->MALE_RELATION:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1468
    :cond_9
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-eqz v0, :cond_e

    :goto_2
    if-ge v3, p2, :cond_e

    .line 1473
    aget-object v0, p0, v2

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1474
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1475
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1476
    :cond_b
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1477
    :cond_c
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkHofRelationWithMaritalStatus([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 1046
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    .line 1047
    aget-object v0, p0, v2

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1048
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    return-object v1

    .line 1054
    :cond_0
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "relationWithHOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ans12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 1056
    :cond_1
    const-string p0, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "641"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const-string p0, "2"

    .line 1057
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "643"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1058
    :cond_3
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1062
    :cond_4
    const-string p0, "629"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "WIFE"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "HUSBAND"

    .line 1063
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1064
    :cond_5
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    return-object v1
.end method

.method public static checkIFSCCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_4

    .line 1573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 1574
    const-string p0, "IFSC code should be 11 characters."

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1579
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[A-Z]{4}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1580
    const-string v0, "The first four characters for IFSC code must be uppercase letters."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1584
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    .line 1585
    const-string v0, "The fifth character for IFSC code must be 0."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[A-Z0-9]{6}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1590
    const-string p0, "The last six characters for IFSC code must be uppercase letters or numbers."

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v0

    goto :goto_1

    .line 1594
    :cond_4
    const-string p0, "Please provide IFSC code."

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static checkImmunisationStockForTD(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 1601
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1602
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "sessionId"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1603
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1604
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "TD1"

    .line 1603
    invoke-interface {p0, v0, v1}, Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;->checkImmunisationStockAvailable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1606
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkInputLength([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 799
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-object v0, p0, v1

    if-eqz v0, :cond_1

    .line 800
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 801
    array-length p1, p1

    sub-int/2addr p1, v1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p1, p0, :cond_1

    .line 802
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 803
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 805
    :cond_0
    const-string p0, "Invalid value"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static checkIntegerPlus([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 1293
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1294
    aget-object p0, p0, v1

    .line 1295
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1297
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1298
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p1, p0, :cond_0

    .line 1300
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkNumberFormatException(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1170
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    .line 1172
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a number."

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkServiceDateForHealthInfra([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 1229
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "healthInfrastructureTypeId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1231
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1233
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1234
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1236
    new-instance v1, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1242
    :cond_0
    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 1243
    aget-object v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    .line 1245
    :goto_0
    array-length v3, p0

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 1246
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const/16 p0, 0x1e

    .line 1249
    :goto_1
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/RchConstants;->GOVERNMENT_INSTITUTIONS:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_3

    .line 1250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    mul-int/lit8 v2, v2, -0x1

    .line 1251
    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 1252
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_2

    .line 1254
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    mul-int/lit8 p0, p0, -0x1

    .line 1255
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->add(II)V

    .line 1256
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 1259
    :goto_2
    invoke-virtual {v1, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1260
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkServiceDateForHomeVisit([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 1267
    const-string v0, "HOSP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1270
    array-length p1, p0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1271
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1273
    new-instance p1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 1275
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    goto :goto_0

    .line 1278
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 1281
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, -0xf

    .line 1282
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1283
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 1285
    invoke-virtual {p1, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1286
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkSingleECMemberFamily()Ljava/lang/String;
    .locals 7

    .line 1178
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyFound"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1179
    sget v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "dob"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1181
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "ans12"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1182
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "defaultMaritalStatus"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1185
    new-instance v3, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v4, -0xf

    const/4 v5, 0x1

    .line 1187
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 1188
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    const/16 v6, -0x22

    .line 1189
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1190
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 1191
    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "629"

    .line 1192
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const-string v0, "Single Eligible Couple Member cannot be added as a Family. Please enter the full family details. If this member belongs to another family, use the family update feature."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static comapreDateAfter([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 421
    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-lez p2, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    .line 425
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, p0, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 426
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 429
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 430
    array-length p2, p0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    const/4 p2, 0x2

    aget-object v2, p0, p2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x3

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 431
    aget-object p2, p0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 432
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 433
    array-length v2, p2

    if-le v2, p0, :cond_1

    .line 434
    aget-object p1, p2, p0

    .line 437
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 440
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 441
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 444
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 445
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, p0, v0

    if-ltz p2, :cond_2

    .line 447
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 450
    :catch_0
    const-string p0, "Invalid Date"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static comapreDateBefore([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 379
    aget-object v1, p0, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-lez p2, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    .line 383
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, p0, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 384
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 387
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 388
    array-length p2, p0

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne p2, v2, :cond_1

    aget-object p2, p0, v3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x3

    aget-object v2, p0, p2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 389
    aget-object v2, p0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 390
    aget-object p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 391
    array-length p2, v2

    if-le p2, p0, :cond_1

    .line 392
    aget-object p1, v2, p0

    :cond_1
    const/16 p0, 0x54

    .line 396
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p2, -0x1

    if-le p0, p2, :cond_2

    .line 397
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 402
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 403
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 404
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 407
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 408
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, p0, v0

    if-gtz p2, :cond_3

    .line 410
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 413
    :catch_0
    const-string p0, "Invalid Date"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static comapreDateWithGivenDate([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    .line 301
    aget-object v1, p0, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-lez p2, :cond_0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    .line 305
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v0

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 309
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 310
    array-length p2, p0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    const/4 p2, 0x2

    aget-object v3, p0, p2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x3

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 311
    aget-object p2, p0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 312
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 313
    array-length v3, p2

    if-le v3, p0, :cond_1

    .line 314
    aget-object p1, p2, p0

    .line 317
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 320
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 321
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 324
    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 325
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long p2, p0, v1

    if-gez p2, :cond_3

    .line 327
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "$s"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 328
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_2
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 334
    :catch_0
    const-string p0, "Invalid Date"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static comapreDateWithGivenDateAfter([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 342
    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-lez p2, :cond_0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    .line 346
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, p0, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 347
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 350
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 351
    array-length p2, p0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    const/4 p2, 0x2

    aget-object v2, p0, p2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x3

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 352
    aget-object p2, p0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 353
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 354
    array-length v2, p2

    if-le v2, p0, :cond_1

    .line 355
    aget-object p1, p2, p0

    .line 358
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 360
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 361
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 365
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 366
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, p0, v0

    if-lez p2, :cond_2

    .line 368
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 371
    :catch_0
    const-string p0, "Invalid Date"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compareDateBetween([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 458
    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez p2, :cond_0

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v1

    .line 465
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, p0, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 466
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 468
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 473
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 474
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 476
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 477
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 478
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 480
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 481
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 483
    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 484
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p0, v0, p1

    if-ltz p0, :cond_1

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    .line 487
    :cond_1
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 491
    :catch_0
    const-string p0, "Invalid Date"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static containsCharacterPipeline(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 501
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 505
    :cond_0
    const-string p0, "Address cannot contain \'sewa|\'"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dobMaritalStatusValidation([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 7

    .line 1075
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 1076
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v2

    .line 1077
    invoke-static {v3, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1076
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1084
    :cond_0
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "dob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "630"

    const/16 v4, -0xf

    if-nez v0, :cond_2

    const-string v0, "defaultMaritalStatus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 1086
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1087
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1088
    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1090
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1091
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1092
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1094
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1095
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1099
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1100
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1101
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 1104
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1105
    invoke-virtual {p2, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1107
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1108
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static familyPlanningDateValidation([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 10

    .line 1309
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    .line 1310
    aget-object v0, p0, v2

    .line 1311
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1314
    array-length v4, p0

    const-string v5, "null"

    const/4 v6, 0x2

    if-le v4, v6, :cond_0

    .line 1315
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v7, p0, v6

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1316
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1317
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1321
    :cond_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 1322
    new-instance v7, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1325
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v8, 0x3

    const/4 v9, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "ANTARA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_1
    const-string p1, "IUCD5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_2
    const-string p1, "PPIUCD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_3
    const-string p1, "PAIUCD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_4
    const-string p1, "IUCD10"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    :goto_0
    const/4 p1, 0x5

    packed-switch v9, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 p0, -0x3

    .line 1345
    invoke-virtual {v3, v6, p0}, Ljava/util/Calendar;->add(II)V

    .line 1346
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 1348
    invoke-virtual {v7, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v7, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1349
    :cond_6
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, -0x5

    .line 1336
    invoke-virtual {v3, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 1337
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 1339
    invoke-virtual {v7, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v7, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1340
    :cond_7
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1354
    :pswitch_2
    array-length v0, p0

    if-le v0, v8, :cond_d

    .line 1355
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v8

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 1356
    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1357
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1358
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 1359
    invoke-virtual {v3, p1, v6}, Ljava/util/Calendar;->add(II)V

    .line 1360
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 1362
    invoke-virtual {v7, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v7, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1363
    :cond_8
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1366
    :cond_9
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1372
    :pswitch_3
    array-length v0, p0

    if-le v0, v8, :cond_d

    .line 1373
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v8

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    .line 1374
    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1375
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1376
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const/16 v0, 0xc

    .line 1377
    invoke-virtual {v3, p1, v0}, Ljava/util/Calendar;->add(II)V

    .line 1378
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 1380
    invoke-virtual {v7, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v7, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1381
    :cond_a
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1384
    :cond_b
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p0, -0xa

    .line 1327
    invoke-virtual {v3, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 1328
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 1330
    invoke-virtual {v7, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v7, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1331
    :cond_c
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7ea0f294 -> :sswitch_4
        -0x73c5e002 -> :sswitch_3
        -0x72f27f73 -> :sswitch_2
        0x42c5b48 -> :sswitch_1
        0x735d5709 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getValidationMessage(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1542
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static greaterThan([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 536
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 541
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 546
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v3, :cond_0

    .line 548
    :try_start_2
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 553
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "GreaterThan"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 554
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 555
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static greaterThanEq([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 567
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 572
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 577
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v3, :cond_0

    .line 579
    :try_start_2
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 584
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "GreaterThanEq"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 585
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 586
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static greaterThanRelatedProperty([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 730
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 734
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 739
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 740
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v2

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_0

    .line 743
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 749
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "GreaterThan"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 750
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 751
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static greaterThen0(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 512
    const-string v0, "Number is not greater than 0"

    const/4 v1, 0x0

    .line 517
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 521
    :goto_0
    :try_start_1
    const-string v2, "GreaterThan"

    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 523
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    move-object v0, p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method public static inputLengthRange([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 886
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 887
    aget-object p0, p0, v1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 888
    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 889
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 890
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p0, :cond_2

    .line 892
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 893
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 895
    :cond_1
    const-string p0, "Invalid value"

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isDateIn([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 8

    .line 203
    const-string v0, "Invalid Date"

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x6

    :try_start_0
    array-length v5, p0

    if-le v5, v4, :cond_2

    .line 204
    aget-object v5, p0, v3

    if-eqz v5, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :try_start_1
    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v6, 0x1

    .line 212
    :goto_0
    :try_start_2
    array-length v7, v5

    if-le v7, v6, :cond_0

    .line 213
    aget-object p1, v5, v6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-wide v5, v1

    .line 227
    :goto_1
    :try_start_3
    array-length p1, p0

    if-ne p1, v4, :cond_3

    .line 228
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 230
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 234
    :cond_3
    invoke-static {v5, v6, p0, v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isDateIn(J[Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_5

    .line 235
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 236
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :catch_2
    return-object v0
.end method

.method public static isDateOut([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 8

    .line 252
    const-string v0, "Invalid Date"

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x6

    :try_start_0
    array-length v5, p0

    if-le v5, v4, :cond_2

    .line 253
    aget-object v5, p0, v3

    if-eqz v5, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_1

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :try_start_1
    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v6, 0x1

    .line 261
    :goto_0
    :try_start_2
    array-length v7, v5

    if-le v7, v6, :cond_0

    .line 262
    aget-object p1, v5, v6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-wide v5, v1

    .line 277
    :goto_1
    :try_start_3
    array-length p1, p0

    if-ne p1, v4, :cond_3

    .line 278
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v3, p0, v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 280
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 285
    :cond_3
    invoke-static {v5, v6, p0, v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isDateOut(J[Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_5

    .line 286
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 287
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :catch_2
    return-object v0
.end method

.method public static isFutureDate([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 56
    const-string v0, "Invalid Date"

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    .line 57
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    :try_start_1
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    :catch_0
    :try_start_2
    array-length p0, v3

    if-le p0, v1, :cond_0

    .line 66
    aget-object p0, v3, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    const-wide/16 p0, 0x0

    .line 79
    :goto_0
    :try_start_3
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFutureDate(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 80
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 81
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :catch_2
    return-object v0
.end method

.method public static isFutureDeliveryTime([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 95
    const-string v0, "Invalid value"

    :try_start_0
    array-length p0, p0

    if-lez p0, :cond_0

    .line 96
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "deliveryDate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 97
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isToday(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 101
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catch_1
    return-object v0
.end method

.method public static isMemberHof(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 1490
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1491
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyHeadFlag"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1492
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "canArchiveHofMember"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1493
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    const-string p0, "2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1494
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isNotToday([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 162
    const-string v0, "Invalid Date"

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    .line 163
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :try_start_1
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :catch_0
    :try_start_2
    array-length p0, v3

    if-le p0, v1, :cond_0

    .line 172
    aget-object p0, v3, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-wide/16 p0, 0x0

    .line 185
    :goto_0
    :try_start_3
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isToday(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 186
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 187
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :catch_2
    return-object v0
.end method

.method public static isOnlyEnglishText(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1502
    const-string v0, "^[a-zA-Z0-9\\s!@#$%^&*()-_=+{}|;:\'\",.<>/?\\[\\]\\\\]+$"

    .line 1503
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1504
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isPastDate([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 5

    .line 120
    const-string v0, "Invalid Date"

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    .line 121
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :try_start_1
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :catch_0
    :try_start_2
    array-length p0, v3

    if-le p0, v1, :cond_0

    .line 130
    aget-object p0, v3, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-wide/16 p0, 0x0

    .line 143
    :goto_0
    :try_start_3
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isPastDate(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 144
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 145
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :catch_2
    return-object v0
.end method

.method public static length([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 1

    .line 920
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eq p1, p0, :cond_1

    .line 921
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 922
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 924
    :cond_0
    const-string p0, "Invalid value"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static lessThan([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 598
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 603
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 608
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v3, :cond_0

    .line 610
    :try_start_2
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 615
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "LessThan"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 616
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 617
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static lessThanEq([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 629
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 633
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 638
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v3, :cond_0

    .line 640
    :try_start_2
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 645
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "LessThanEq"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 646
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 647
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static lessThanEqRelatedProperty([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 660
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 664
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 669
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 670
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v2

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_0

    .line 673
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 679
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "LessThanEq"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 680
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 681
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static lessThanRelatedProperty([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 764
    const-string v0, "Invalid value"

    const/4 v1, 0x0

    .line 768
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 773
    :try_start_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 774
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v2

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_0

    .line 777
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 783
    :catch_1
    :cond_0
    :try_start_3
    const-string p0, "LessThan"

    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1

    .line 784
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 785
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static maritalStatusValidation(Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 1032
    const-string v0, "ans12"

    if-nez p1, :cond_0

    .line 1033
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 1035
    :cond_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    .line 1037
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "641"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "2"

    .line 1038
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "643"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1039
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static maxLength([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 1

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le p1, p0, :cond_1

    .line 906
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 907
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 909
    :cond_0
    const-string p0, "Invalid value"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static mobileNumber([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 6

    .line 832
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    aget-object v0, p0, v2

    const-string v3, "10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 834
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, p0, :cond_6

    .line 835
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 836
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 838
    :cond_0
    const-string v1, "Invalid value"

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    .line 843
    const-string p0, "Mobile number must contain 10 digits."

    return-object p0

    :cond_2
    const/4 p0, 0x0

    .line 847
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 848
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[012345]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 849
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 850
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 852
    :cond_3
    const-string v1, "Mobile number can\'t start from 0 to 5"

    .line 856
    :cond_4
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {p0, p1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getMobileNumberCount(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long p0, v2, v4

    if-lez p0, :cond_5

    .line 858
    const-string p0, "Mobile number is already registered with other family. Please enter another number."

    move-object v1, p0

    .line 861
    :cond_5
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBlockedMobileNumbers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 862
    const-string v1, "The mobile number is blocked. Please enter another number"

    :cond_6
    :goto_0
    return-object v1
.end method

.method public static mobileNumberFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 874
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 875
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 876
    const-string p0, "Mobile number must contain 10 digits."

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[012345]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 879
    const-string p0, "Mobile number can\'t start from 0 to 5"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static motherChildComponentValidation(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 1127
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "numberOfMemberForMotherSelection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1129
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1130
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1131
    new-instance v2, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil$1;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil$1;-><init>()V

    .line 1132
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1131
    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 1133
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1134
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1136
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1137
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1138
    const-string p0, "Mother and Child selection for a child is not valid."

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onlyOneHead(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 9

    .line 932
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyFound"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 933
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 934
    sget v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    const-string v2, "familyHeadFlag"

    if-nez v0, :cond_0

    .line 935
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    .line 936
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 937
    const-string p0, "Please select atleast one head of the family"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 942
    :goto_0
    sget v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ge v0, v5, :cond_6

    .line 945
    const-string v5, "memberStatus"

    if-nez v0, :cond_1

    .line 946
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 947
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 949
    :cond_1
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 950
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_2

    .line 952
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 953
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    if-eqz v5, :cond_5

    .line 956
    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-eq v3, v6, :cond_7

    .line 960
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v4, v0, :cond_7

    .line 961
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static vaccinationValidationChild(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1147
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "deliveryDate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1148
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "dob"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1149
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v4, "FHW_WPD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v4, "FHW_PNC"

    .line 1150
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1151
    new-instance v1, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1153
    new-instance v0, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 1157
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1158
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1159
    const-string v2, "currentVaccine"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1161
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    .line 1162
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    .line 1161
    invoke-interface {v2, v1, v0, p0, v3}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->vaccinationValidationForChild(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3
.end method

.method public static validateRegex([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 3

    .line 1511
    array-length v0, p0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_4

    .line 1512
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1514
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "letters"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "alphanumeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "alphabetic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1531
    :pswitch_0
    const-string p0, "[0-9!@#$%^&*()_+\\-=\\[\\]{};\':\"\\\\|,.<>\\/?]"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1532
    const-string p0, "The value should not contain special characters or numbers"

    invoke-static {p2, p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->getValidationMessage(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1526
    :pswitch_1
    const-string p0, "^[a-zA-Z0-9]*$"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_4

    .line 1527
    const-string p0, "The value should contain alphabets and numbers only"

    invoke-static {p2, p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->getValidationMessage(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1516
    :pswitch_2
    const-string p0, "^[a-zA-Z]*$"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_4

    .line 1517
    const-string p0, "The value should contain alphabets only"

    invoke-static {p2, p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->getValidationMessage(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1521
    :pswitch_3
    const-string p0, "^[0-9]*$"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_4

    .line 1522
    const-string p0, "The value should contain numbers only"

    invoke-static {p2, p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->getValidationMessage(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x773be4f3 -> :sswitch_3
        -0x4826dd33 -> :sswitch_2
        -0x44303c11 -> :sswitch_1
        0x413610d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validateSumAgainstProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 4

    .line 1550
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 1551
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v0, p0, v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1552
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v1, p0, v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1553
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object p0, p0, v2

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 1556
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1557
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1558
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, v1

    if-le v0, p0, :cond_0

    .line 1561
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static villageSelectionCheck(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;
    .locals 2

    .line 1119
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "locationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1121
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
