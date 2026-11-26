.class public Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;
.super Ljava/lang/Object;
.source "ImmunisationServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/ImmunisationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDueImmunisationVitaminAForChild(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 497
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 499
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x2

    .line 500
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    :cond_0
    const/16 p2, 0x3c

    if-lt p1, p2, :cond_1

    .line 502
    const-string p1, "VITAMIN_A_9"

    return-object p1

    :cond_1
    const/16 p2, 0x36

    if-lt p1, p2, :cond_2

    .line 504
    const-string p1, "VITAMIN_A_8"

    return-object p1

    :cond_2
    const/16 p2, 0x30

    if-lt p1, p2, :cond_3

    .line 506
    const-string p1, "VITAMIN_A_7"

    return-object p1

    :cond_3
    const/16 p2, 0x2a

    if-lt p1, p2, :cond_4

    .line 508
    const-string p1, "VITAMIN_A_6"

    return-object p1

    :cond_4
    const/16 p2, 0x24

    if-lt p1, p2, :cond_5

    .line 510
    const-string p1, "VITAMIN_A_5"

    return-object p1

    :cond_5
    const/16 p2, 0x1e

    if-lt p1, p2, :cond_6

    .line 512
    const-string p1, "VITAMIN_A_4"

    return-object p1

    :cond_6
    const/16 p2, 0x18

    if-lt p1, p2, :cond_7

    .line 514
    const-string p1, "VITAMIN_A_3"

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 36
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p4, :cond_1

    .line 37
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getImmunisationDateMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 41
    :goto_1
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I

    move-result v4

    .line 42
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    .line 43
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    .line 44
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfYears(Ljava/util/Date;Ljava/util/Date;)I

    move-result v7

    move-object/from16 v8, p0

    .line 46
    invoke-virtual {v8, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationVitaminAForChild(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 48
    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v10, "BCG"

    const-string v11, "VITAMIN_K"

    const-string v12, "HEPATITIS_B_0"

    const-string v13, "OPV_0"

    if-eqz v9, :cond_3

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v14, "FHW_WPD"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 51
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v9, 0x1

    if-gt v5, v9, :cond_4

    .line 58
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v14, 0xf

    if-gt v5, v14, :cond_5

    .line 63
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v5, 0xc

    if-gt v6, v5, :cond_6

    .line 69
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v14, 0x6

    .line 75
    const-string v15, "ROTA_VIRUS_1"

    const-string v9, "PENTA_1"

    const-string v5, "OPV_1"

    if-lt v4, v14, :cond_7

    .line 76
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v10, "F_IPV_1_01"

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v10, "PCV_1"

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v10, 0xa

    .line 87
    const-string v11, "ROTA_VIRUS_2"

    const-string v12, "OPV_2"

    const-string v14, "PENTA_2"

    if-lt v4, v10, :cond_8

    .line 88
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_8
    const-string v10, "ROTA_VIRUS_3"

    const-string v8, "OPV_3"

    const/16 v0, 0xe

    const-string v1, "PENTA_3"

    if-lt v4, v0, :cond_9

    .line 94
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v4, "F_IPV_2_01"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v4, "PCV_2"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v4, 0x9

    .line 101
    const-string v0, "MEASLES_RUBELLA_1"

    if-lt v6, v4, :cond_a

    .line 102
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v4, "PCV_BOOSTER"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_a
    const-string v4, "DPT_1"

    move-object/from16 v16, v0

    const/16 v0, 0xc

    if-lt v6, v0, :cond_b

    .line 106
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    const/16 v0, 0xd

    move-object/from16 v17, v11

    .line 108
    const-string v11, "DPT_2"

    if-lt v6, v0, :cond_c

    .line 109
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_c
    const-string v0, "DPT_3"

    move-object/from16 v18, v15

    const/16 v15, 0xe

    if-lt v6, v15, :cond_d

    .line 112
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 v15, 0x10

    move-object/from16 v19, v10

    .line 114
    const-string v10, "MEASLES_RUBELLA_2"

    if-lt v6, v15, :cond_e

    .line 115
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v15, "OPV_BOOSTER"

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v15, "DPT_BOOSTER"

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v15, 0x5

    if-lt v7, v15, :cond_f

    .line 120
    const-string v15, "DPT_BOOSTER_2"

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    const/16 v15, 0x8

    if-lt v7, v15, :cond_10

    .line 124
    const-string v15, "TD_10"

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    const/16 v15, 0xe

    if-lt v7, v15, :cond_11

    .line 127
    const-string v7, "TD_16"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    const/16 v7, 0x9

    if-lt v6, v7, :cond_12

    .line 130
    const-string v7, "VITAMIN_A_1"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    const/16 v7, 0x10

    if-lt v6, v7, :cond_13

    .line 133
    const-string v7, "VITAMIN_A_2"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_13
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 137
    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 138
    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 139
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 142
    :cond_14
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    :cond_15
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    .line 148
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 149
    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 150
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 153
    :cond_16
    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_17
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_18
    const-string v7, "OPV_BOOSTER"

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 165
    invoke-interface {v2, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v2, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_19
    :goto_3
    move-object/from16 v5, v19

    goto :goto_4

    .line 169
    :cond_1a
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 170
    invoke-interface {v2, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v2, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 173
    :cond_1b
    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 174
    invoke-interface {v2, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 176
    :cond_1c
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 177
    invoke-interface {v2, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 182
    :goto_4
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move-object/from16 v7, v18

    .line 183
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v8, v17

    .line 184
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1d
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    .line 185
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 186
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_1e
    :goto_5
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 191
    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 193
    :cond_1f
    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 194
    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 198
    :cond_20
    :goto_6
    const-string v1, "DPT_BOOSTER_2"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 199
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 202
    const-string v0, "DPT_BOOSTER"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 203
    :cond_21
    const-string v1, "DPT_BOOSTER"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 204
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 207
    :cond_22
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 208
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 210
    :cond_23
    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 211
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    :cond_24
    :goto_7
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object/from16 v0, v16

    .line 216
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_25
    move-object/from16 v0, v16

    .line 422
    :goto_8
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "MEASLES_1"

    .line 423
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_9

    :cond_26
    const/4 v1, 0x0

    goto :goto_a

    :cond_27
    :goto_9
    const/4 v1, 0x1

    .line 424
    :goto_a
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz v1, :cond_28

    .line 425
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_28
    const/16 v4, 0x9

    if-lt v6, v4, :cond_29

    const/16 v4, 0x18

    if-gt v6, v4, :cond_29

    if-nez v1, :cond_29

    .line 429
    const-string v1, "F_IPV_3"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 430
    const-string v1, "F_IPV_3"

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_29
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 434
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "MEASLES_2"

    .line 435
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_b

    .line 438
    :cond_2a
    const-string v1, "MEASLES_1"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "MEASLES_1"

    .line 439
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    move-object/from16 v4, p3

    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v6, 0x4

    if-ge v1, v6, :cond_2c

    .line 440
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2b
    move-object/from16 v4, p3

    .line 441
    :cond_2c
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 442
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2f

    .line 443
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2d
    :goto_b
    move-object/from16 v4, p3

    .line 436
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2e
    move-object/from16 v4, p3

    :cond_2f
    :goto_c
    move-object/from16 v0, p1

    .line 447
    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/16 v4, 0xc

    if-lt v1, v4, :cond_30

    .line 448
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 449
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 470
    :cond_30
    const-string v1, "TD_16"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 471
    const-string v1, "TD_10"

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 474
    :cond_31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v3, 0x7e5

    const/4 v4, 0x1

    .line 475
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    const/16 v5, 0x8

    .line 476
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 477
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 478
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 480
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 481
    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 482
    const-string v0, "PCV_1"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 483
    const-string v0, "PCV_2"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 484
    const-string v0, "PCV_BOOSTER"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 487
    :cond_32
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    sget-object v1, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 492
    :cond_33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public getMissedImmunisationListFromDueList(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2959
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 2960
    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->isImmunisationMissedOrNotValid(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2961
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isImmunisationMissed(Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1490
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 1491
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1492
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1493
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    .line 1494
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    if-nez p3, :cond_0

    .line 1498
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    .line 1501
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v10, "PENTA_1"

    const-string v11, "VITAMIN_A_6"

    const-string v12, "VITAMIN_A_5"

    const-string v14, "VITAMIN_A_4"

    const-string v9, "VITAMIN_A_3"

    const-string v13, "VITAMIN_A_2"

    const-string v15, "VITAMIN_A_1"

    move-object/from16 v19, v5

    const/4 v5, 0x2

    const/16 v22, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "DPT_BOOSTER_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x25

    const/16 v22, 0x25

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "DPT_BOOSTER"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x24

    const/16 v22, 0x24

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "VITAMIN_K"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x23

    const/16 v22, 0x23

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "VITAMIN_A"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x22

    const/16 v22, 0x22

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "VITAMIN_A_9"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x21

    const/16 v22, 0x21

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "VITAMIN_A_8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x20

    const/16 v22, 0x20

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "VITAMIN_A_7"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x1f

    const/16 v22, 0x1f

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x1e

    const/16 v22, 0x1e

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x1d

    const/16 v22, 0x1d

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v22, 0x1c

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v1, 0x1b

    const/16 v22, 0x1b

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v1, 0x1a

    const/16 v22, 0x1a

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v1, 0x19

    const/16 v22, 0x19

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "F_IPV_3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v22, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "ROTA_VIRUS_3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x17

    const/16 v22, 0x17

    goto/16 :goto_1

    :sswitch_f
    const-string v8, "ROTA_VIRUS_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x16

    const/16 v22, 0x16

    goto/16 :goto_1

    :sswitch_10
    const-string v8, "ROTA_VIRUS_1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x15

    const/16 v22, 0x15

    goto/16 :goto_1

    :sswitch_11
    const-string v8, "TD_16"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v22, 0x14

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "TD_10"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v1, 0x13

    const/16 v22, 0x13

    goto/16 :goto_1

    :sswitch_13
    const-string v8, "PCV_1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v1, 0x12

    const/16 v22, 0x12

    goto/16 :goto_1

    :sswitch_14
    const-string v8, "OPV_3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v1, 0x11

    const/16 v22, 0x11

    goto/16 :goto_1

    :sswitch_15
    const-string v8, "OPV_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v22, 0x10

    goto/16 :goto_1

    :sswitch_16
    const-string v8, "OPV_1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v1, 0xf

    const/16 v22, 0xf

    goto/16 :goto_1

    :sswitch_17
    const-string v8, "OPV_0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0xe

    const/16 v22, 0xe

    goto/16 :goto_1

    :sswitch_18
    const-string v8, "DPT_3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v1, 0xd

    const/16 v22, 0xd

    goto/16 :goto_1

    :sswitch_19
    const-string v8, "DPT_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v22, 0xc

    goto/16 :goto_1

    :sswitch_1a
    const-string v8, "DPT_1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v1, 0xb

    const/16 v22, 0xb

    goto/16 :goto_1

    :sswitch_1b
    const-string v8, "MEASLES_RUBELLA_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v1, 0xa

    const/16 v22, 0xa

    goto/16 :goto_1

    :sswitch_1c
    const-string v8, "MEASLES_RUBELLA_1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v22, 0x9

    goto/16 :goto_1

    :sswitch_1d
    const-string v8, "PENTA_3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v22, 0x8

    goto/16 :goto_1

    :sswitch_1e
    const-string v8, "PENTA_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_1

    :cond_1f
    const/4 v1, 0x7

    const/16 v22, 0x7

    goto :goto_1

    :sswitch_1f
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_1

    :cond_20
    const/16 v22, 0x6

    goto :goto_1

    :sswitch_20
    const-string v8, "BCG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_1

    :cond_21
    const/16 v22, 0x5

    goto :goto_1

    :sswitch_21
    const-string v8, "HEPATITIS_B_0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_1

    :cond_22
    const/16 v22, 0x4

    goto :goto_1

    :sswitch_22
    const-string v8, "OPV_BOOSTER"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_1

    :cond_23
    const/4 v1, 0x3

    const/16 v22, 0x3

    goto :goto_1

    :sswitch_23
    const-string v8, "F_IPV_2_05"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_1

    :cond_24
    const/16 v22, 0x2

    goto :goto_1

    :sswitch_24
    const-string v8, "F_IPV_2_01"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_1

    :cond_25
    const/16 v22, 0x1

    goto :goto_1

    :sswitch_25
    const-string v8, "F_IPV_1_01"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_1

    :cond_26
    const/4 v1, 0x0

    const/16 v22, 0x0

    :goto_1
    const/16 v8, 0x62

    const/16 v1, 0x3c

    packed-switch v22, :pswitch_data_0

    move-object/from16 v5, v19

    :cond_27
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 1758
    :pswitch_0
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1759
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1760
    const-string v6, "DPT_BOOSTER"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_28

    .line 1762
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x6

    .line 1763
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1764
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_28

    .line 1765
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1768
    :cond_28
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x54

    .line 1769
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1770
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_1
    const/16 v1, 0x10

    .line 1734
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1735
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1736
    const-string v6, "DPT_3"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_29

    .line 1738
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x6

    .line 1739
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1740
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_29

    .line 1741
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1744
    :cond_29
    const-string v6, "PENTA_3"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_2a

    .line 1746
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x6

    .line 1747
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1748
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_2a

    .line 1749
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1752
    :cond_2a
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x53

    .line 1753
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1754
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    .line 2095
    :pswitch_2
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 2096
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2097
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_2b

    .line 2099
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x20

    .line 2100
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2101
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    cmp-long v6, v18, v21

    if-lez v6, :cond_2b

    .line 2102
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2105
    :cond_2b
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_2c

    .line 2107
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x1c

    .line 2108
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2109
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    cmp-long v6, v18, v20

    if-lez v6, :cond_2c

    .line 2110
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2113
    :cond_2c
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_2d

    .line 2115
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x18

    .line 2116
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2117
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    cmp-long v6, v8, v17

    if-lez v6, :cond_2d

    .line 2118
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2121
    :cond_2d
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_2e

    .line 2123
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x14

    .line 2124
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2125
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v6, v8, v13

    if-lez v6, :cond_2e

    .line 2126
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2129
    :cond_2e
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_2f

    .line 2131
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x10

    .line 2132
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2133
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v6, v8, v12

    if-lez v6, :cond_2f

    .line 2134
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2137
    :cond_2f
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_30

    .line 2139
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0xc

    .line 2140
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2141
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_30

    .line 2142
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2145
    :cond_30
    const-string v6, "VITAMIN_A_7"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_31

    .line 2147
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x8

    .line 2148
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2149
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_31

    .line 2150
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2153
    :cond_31
    const-string v6, "VITAMIN_A_8"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_32

    .line 2155
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x4

    .line 2156
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2157
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_32

    .line 2158
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2161
    :cond_32
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x48

    .line 2162
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 2163
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_3
    const/16 v6, 0x36

    .line 2031
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 2032
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2033
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_33

    .line 2035
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x1c

    .line 2036
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2037
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    cmp-long v8, v18, v20

    if-lez v8, :cond_33

    .line 2038
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2041
    :cond_33
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_34

    .line 2043
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x18

    .line 2044
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2045
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    cmp-long v8, v17, v20

    if-lez v8, :cond_34

    .line 2046
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2049
    :cond_34
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_35

    .line 2051
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x14

    .line 2052
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2053
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v10, v8, v15

    if-lez v10, :cond_35

    .line 2054
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2057
    :cond_35
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_36

    .line 2059
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x10

    .line 2060
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2061
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v10, v8, v13

    if-lez v10, :cond_36

    .line 2062
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2065
    :cond_36
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_37

    .line 2067
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xc

    .line 2068
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2069
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v10, v8, v12

    if-lez v10, :cond_37

    .line 2070
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2073
    :cond_37
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_38

    .line 2075
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8

    .line 2076
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2077
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_38

    .line 2078
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2081
    :cond_38
    const-string v8, "VITAMIN_A_7"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_39

    .line 2083
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2084
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 2085
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_39

    .line 2086
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_3

    :cond_39
    move-object v3, v6

    .line 2089
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2090
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 2091
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_4
    const/16 v6, 0x30

    .line 1975
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1976
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1977
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_3a

    .line 1979
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x18

    .line 1980
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1981
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    cmp-long v8, v17, v20

    if-lez v8, :cond_3a

    .line 1982
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1985
    :cond_3a
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_3b

    .line 1987
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x14

    .line 1988
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1989
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    cmp-long v8, v15, v17

    if-lez v8, :cond_3b

    .line 1990
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1993
    :cond_3b
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_3c

    .line 1995
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x10

    .line 1996
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1997
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v10, v8, v15

    if-lez v10, :cond_3c

    .line 1998
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2001
    :cond_3c
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_3d

    .line 2003
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xc

    .line 2004
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2005
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v10, v8, v13

    if-lez v10, :cond_3d

    .line 2006
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2009
    :cond_3d
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_3e

    .line 2011
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8

    .line 2012
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 2013
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v10, v8, v12

    if-lez v10, :cond_3e

    .line 2014
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 2017
    :cond_3e
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3f

    .line 2019
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2020
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 2021
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_3f

    .line 2022
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_4

    :cond_3f
    move-object v3, v6

    .line 2025
    :goto_4
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2026
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 2027
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_5
    const/16 v6, 0x2a

    .line 1927
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1928
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1929
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_40

    .line 1931
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x14

    .line 1932
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1933
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v8, v10, v15

    if-lez v8, :cond_40

    .line 1934
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1937
    :cond_40
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_41

    .line 1939
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x10

    .line 1940
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1941
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v8, v10, v15

    if-lez v8, :cond_41

    .line 1942
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1945
    :cond_41
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_42

    .line 1947
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xc

    .line 1948
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1949
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v13, v8, v10

    if-lez v13, :cond_42

    .line 1950
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1953
    :cond_42
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_43

    .line 1955
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8

    .line 1956
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1957
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v13, v8, v10

    if-lez v13, :cond_43

    .line 1958
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1961
    :cond_43
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_44

    .line 1963
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 1964
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 1965
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_44

    .line 1966
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_5

    :cond_44
    move-object v3, v6

    .line 1969
    :goto_5
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1970
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1971
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_6
    const/16 v6, 0x24

    .line 1887
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1888
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1889
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_45

    .line 1891
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x10

    .line 1892
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1893
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v8, v10, v15

    if-lez v8, :cond_45

    .line 1894
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1897
    :cond_45
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_46

    .line 1899
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xc

    .line 1900
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1901
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_46

    .line 1902
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1905
    :cond_46
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_47

    .line 1907
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8

    .line 1908
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1909
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_47

    .line 1910
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1913
    :cond_47
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_48

    .line 1915
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 1916
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 1917
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_48

    .line 1918
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_6

    :cond_48
    move-object v3, v6

    .line 1921
    :goto_6
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1922
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1923
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_7
    const/16 v6, 0x1e

    .line 1855
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1856
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1857
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_49

    .line 1859
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xc

    .line 1860
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1861
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v8, v10, v14

    if-lez v8, :cond_49

    .line 1862
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1865
    :cond_49
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_4a

    .line 1867
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8

    .line 1868
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1869
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_4a

    .line 1870
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1873
    :cond_4a
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4b

    .line 1875
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 1876
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 1877
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_4b

    .line 1878
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_7

    :cond_4b
    move-object v3, v6

    .line 1881
    :goto_7
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1882
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1883
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_8
    const/16 v6, 0x18

    .line 1831
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1832
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1833
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_4c

    .line 1835
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8

    .line 1836
    invoke-virtual {v3, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1837
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_4c

    .line 1838
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1841
    :cond_4c
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4d

    .line 1843
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 1844
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 1845
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_4d

    .line 1846
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_8

    :cond_4d
    move-object v3, v6

    .line 1849
    :goto_8
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1850
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1851
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_9
    const/16 v6, 0x10

    .line 1815
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1816
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1817
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4e

    .line 1819
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 1820
    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 1821
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_4e

    .line 1822
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_9

    :cond_4e
    move-object v3, v6

    .line 1825
    :goto_9
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1826
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1827
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_a
    const/16 v0, 0x8

    .line 1783
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1784
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v3, -0x8

    .line 1785
    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 1786
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1787
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_e

    :pswitch_b
    const/16 v0, 0x9

    .line 1774
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1775
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/16 v1, -0x9

    .line 1776
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0x18

    .line 1777
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1778
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_e

    :pswitch_c
    const/4 v1, 0x5

    .line 1653
    invoke-virtual {v2, v1, v8}, Ljava/util/Calendar;->add(II)V

    .line 1654
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1655
    const-string v8, "ROTA_VIRUS_1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_4f

    .line 1657
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x38

    .line 1658
    invoke-virtual {v3, v1, v8}, Ljava/util/Calendar;->add(II)V

    .line 1659
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-lez v1, :cond_4f

    .line 1660
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1663
    :cond_4f
    const-string v1, "ROTA_VIRUS_2"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    if-eqz v1, :cond_50

    .line 1665
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x1c

    const/4 v7, 0x5

    .line 1666
    invoke-virtual {v3, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 1667
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-lez v1, :cond_50

    .line 1668
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_a

    :cond_50
    move-object v1, v6

    .line 1671
    :goto_a
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x18

    .line 1672
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1673
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_d
    const/16 v1, 0x46

    const/4 v6, 0x5

    .line 1637
    invoke-virtual {v2, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 1638
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1639
    const-string v8, "ROTA_VIRUS_1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_51

    .line 1641
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    .line 1642
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1643
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_51

    .line 1644
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1647
    :cond_51
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x17

    .line 1648
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1649
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_e
    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 2176
    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 2177
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 2178
    const-string v0, "TD_10"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_27

    .line 2180
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x3

    .line 2181
    invoke-virtual {v3, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 2182
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_27

    .line 2183
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_f
    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 2167
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 2168
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 2169
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xd

    .line 2170
    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x16c

    const/4 v1, 0x6

    .line 2171
    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 2172
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_2

    :pswitch_10
    const/4 v6, 0x5

    .line 1546
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1547
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1548
    const-string v9, "OPV_1"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_52

    .line 1550
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x38

    .line 1551
    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->add(II)V

    .line 1552
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_52

    .line 1553
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1556
    :cond_52
    const-string v6, "OPV_2"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_53

    .line 1558
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x1c

    const/4 v7, 0x5

    .line 1559
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 1560
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_53

    .line 1561
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_b

    :cond_53
    move-object v3, v8

    .line 1564
    :goto_b
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1565
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1566
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto :goto_d

    :pswitch_11
    const/16 v6, 0x46

    const/4 v8, 0x5

    .line 1530
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 1531
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1532
    const-string v9, "OPV_1"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_54

    .line 1534
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    .line 1535
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 1536
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_54

    .line 1537
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_c

    :cond_54
    move-object v3, v6

    .line 1540
    :goto_c
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1541
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1542
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    :goto_d
    move-object v5, v3

    goto/16 :goto_2

    :pswitch_12
    const/16 v0, 0x2a

    const/4 v6, 0x5

    .line 1522
    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->add(II)V

    .line 1523
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/16 v3, -0x2a

    .line 1524
    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 1525
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1526
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    :goto_e
    move-object v5, v0

    goto/16 :goto_2

    :pswitch_13
    const/4 v6, 0x5

    .line 1516
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const/16 v0, 0xf

    .line 1517
    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->add(II)V

    .line 1518
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_2

    :pswitch_14
    const/4 v6, 0x5

    const/16 v1, 0xe

    .line 1710
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1711
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1712
    const-string v8, "DPT_1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    if-eqz v8, :cond_55

    .line 1714
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x38

    .line 1715
    invoke-virtual {v3, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1716
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_55

    .line 1717
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1720
    :cond_55
    const-string v6, "DPT_2"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_56

    .line 1722
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x1c

    const/4 v7, 0x5

    .line 1723
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 1724
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_56

    .line 1725
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1728
    :cond_56
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x54

    .line 1729
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1730
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_15
    const/16 v1, 0xd

    .line 1694
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1695
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1696
    const-string v6, "DPT_1"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_57

    .line 1698
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x1c

    const/4 v7, 0x5

    .line 1699
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 1700
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_57

    .line 1701
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1704
    :cond_57
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x53

    .line 1705
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1706
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_16
    const/16 v0, 0xc

    .line 1686
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1687
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/16 v1, -0xc

    .line 1688
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0x52

    .line 1689
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1690
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_e

    :pswitch_17
    const/16 v6, 0x10

    .line 1799
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1800
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1801
    const-string v8, "MEASLES_RUBELLA_1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_58

    .line 1803
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    const/4 v8, 0x5

    .line 1804
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 1805
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_58

    .line 1806
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_f

    :cond_58
    move-object v3, v6

    .line 1809
    :goto_f
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1810
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1811
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_18
    const/16 v0, 0x9

    .line 1791
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1792
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/16 v1, -0x9

    .line 1793
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0x3b

    .line 1794
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1795
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_e

    :pswitch_19
    const/4 v6, 0x5

    .line 1602
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1603
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1604
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_59

    .line 1606
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x38

    .line 1607
    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->add(II)V

    .line 1608
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_59

    .line 1609
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1612
    :cond_59
    const-string v6, "PENTA_2"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_5a

    .line 1614
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x1c

    const/4 v7, 0x5

    .line 1615
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 1616
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_5a

    .line 1617
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_10

    :cond_5a
    move-object v3, v8

    .line 1620
    :goto_10
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1621
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1622
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_1a
    const/16 v1, 0x46

    const/4 v6, 0x5

    .line 1586
    invoke-virtual {v2, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 1587
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1588
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_5b

    .line 1590
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    .line 1591
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1592
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_5b

    .line 1593
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1596
    :cond_5b
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x3b

    .line 1597
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 1598
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    :goto_11
    move-object v5, v1

    goto/16 :goto_2

    .line 1510
    :pswitch_1b
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const/4 v0, 0x1

    .line 1511
    invoke-virtual {v2, v0, v0}, Ljava/util/Calendar;->add(II)V

    .line 1512
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_13

    :pswitch_1c
    const/4 v0, 0x1

    .line 1504
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const/4 v1, 0x5

    .line 1505
    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 1506
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_2

    :pswitch_1d
    const/16 v1, 0x10

    .line 1570
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 1571
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1572
    const-string v6, "OPV_3"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_5c

    .line 1574
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x6

    .line 1575
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1576
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_5c

    .line 1577
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :cond_5c
    move-object v5, v1

    .line 1580
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1581
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1582
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto :goto_13

    :pswitch_1e
    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1678
    invoke-virtual {v2, v1, v8}, Ljava/util/Calendar;->add(II)V

    .line 1679
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    const/16 v6, -0x62

    .line 1680
    invoke-virtual {v2, v1, v6}, Ljava/util/Calendar;->add(II)V

    const/16 v6, 0xc

    .line 1681
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1682
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto :goto_12

    :pswitch_1f
    const/4 v0, 0x1

    const/4 v1, 0x5

    const/16 v6, 0xc

    const/16 v3, 0x2a

    .line 1629
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 1630
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    const/16 v7, -0x2a

    .line 1631
    invoke-virtual {v2, v1, v7}, Ljava/util/Calendar;->add(II)V

    .line 1632
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1633
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    :goto_12
    move-object v5, v3

    .line 2190
    :goto_13
    invoke-virtual {v5, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v6, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_14

    :cond_5d
    const/4 v5, 0x0

    goto :goto_15

    :cond_5e
    :goto_14
    const/4 v5, 0x1

    :goto_15
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x6f4a6128 -> :sswitch_25
        -0x6f49ecc9 -> :sswitch_24
        -0x6f49ecc5 -> :sswitch_23
        -0x2c422c3a -> :sswitch_22
        -0x27a1c3d1 -> :sswitch_21
        0x10026 -> :sswitch_20
        0x2233f58 -> :sswitch_1f
        0x2233f59 -> :sswitch_1e
        0x2233f5a -> :sswitch_1d
        0x351009e -> :sswitch_1c
        0x351009f -> :sswitch_1b
        0x3e3e2fa -> :sswitch_1a
        0x3e3e2fb -> :sswitch_19
        0x3e3e2fc -> :sswitch_18
        0x47eed06 -> :sswitch_17
        0x47eed07 -> :sswitch_16
        0x47eed08 -> :sswitch_15
        0x47eed09 -> :sswitch_14
        0x4871bb5 -> :sswitch_13
        0x4c00a4e -> :sswitch_12
        0x4c00a54 -> :sswitch_11
        0xa18317a -> :sswitch_10
        0xa18317b -> :sswitch_f
        0xa18317c -> :sswitch_e
        0x1d3af6ca -> :sswitch_d
        0x1eaf0fc6 -> :sswitch_c
        0x1eaf0fc7 -> :sswitch_b
        0x1eaf0fc8 -> :sswitch_a
        0x1eaf0fc9 -> :sswitch_9
        0x1eaf0fca -> :sswitch_8
        0x1eaf0fcb -> :sswitch_7
        0x1eaf0fcc -> :sswitch_6
        0x1eaf0fcd -> :sswitch_5
        0x1eaf0fce -> :sswitch_4
        0x3d08f914 -> :sswitch_3
        0x3d08f91e -> :sswitch_2
        0x45614779 -> :sswitch_1
        0x722d58ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1f
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
        :pswitch_1f
        :pswitch_f
        :pswitch_e
        :pswitch_1f
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
        :pswitch_a
        :pswitch_1c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isImmunisationMissedOrNotValid(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2197
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2202
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    .line 2203
    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    .line 2204
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2205
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2206
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    .line 2207
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    if-nez p4, :cond_0

    .line 2211
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    .line 2214
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "VITAMIN_A_6"

    const-string v13, "VITAMIN_A_5"

    const-string v15, "VITAMIN_A_4"

    const-string v14, "VITAMIN_A_3"

    const-string v12, "VITAMIN_A_2"

    move-object/from16 v16, v7

    const-string v7, "VITAMIN_A_1"

    move-object/from16 v18, v8

    const/4 v8, 0x2

    const/16 v20, -0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "DPT_BOOSTER_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x27

    const/16 v20, 0x27

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "DPT_BOOSTER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x26

    const/16 v20, 0x26

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "VITAMIN_K"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x25

    const/16 v20, 0x25

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "VITAMIN_A"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x24

    const/16 v20, 0x24

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "VITAMIN_A_9"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x23

    const/16 v20, 0x23

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "VITAMIN_A_8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x22

    const/16 v20, 0x22

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "VITAMIN_A_7"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x21

    const/16 v20, 0x21

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x20

    const/16 v20, 0x20

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x1f

    const/16 v20, 0x1f

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x1e

    const/16 v20, 0x1e

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0x1d

    const/16 v20, 0x1d

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v20, 0x1c

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0x1b

    const/16 v20, 0x1b

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "F_IPV_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x1a

    const/16 v20, 0x1a

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "ROTA_VIRUS_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x19

    const/16 v20, 0x19

    goto/16 :goto_1

    :sswitch_f
    const-string v10, "ROTA_VIRUS_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v20, 0x18

    goto/16 :goto_1

    :sswitch_10
    const-string v10, "ROTA_VIRUS_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v0, 0x17

    const/16 v20, 0x17

    goto/16 :goto_1

    :sswitch_11
    const-string v10, "TD_16"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v0, 0x16

    const/16 v20, 0x16

    goto/16 :goto_1

    :sswitch_12
    const-string v10, "TD_10"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v0, 0x15

    const/16 v20, 0x15

    goto/16 :goto_1

    :sswitch_13
    const-string v10, "PCV_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v20, 0x14

    goto/16 :goto_1

    :sswitch_14
    const-string v10, "PCV_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v0, 0x13

    const/16 v20, 0x13

    goto/16 :goto_1

    :sswitch_15
    const-string v10, "OPV_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v0, 0x12

    const/16 v20, 0x12

    goto/16 :goto_1

    :sswitch_16
    const-string v10, "OPV_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v0, 0x11

    const/16 v20, 0x11

    goto/16 :goto_1

    :sswitch_17
    const-string v10, "OPV_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v20, 0x10

    goto/16 :goto_1

    :sswitch_18
    const-string v10, "OPV_0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v0, 0xf

    const/16 v20, 0xf

    goto/16 :goto_1

    :sswitch_19
    const-string v10, "DPT_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v0, 0xe

    const/16 v20, 0xe

    goto/16 :goto_1

    :sswitch_1a
    const-string v10, "DPT_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v0, 0xd

    const/16 v20, 0xd

    goto/16 :goto_1

    :sswitch_1b
    const-string v10, "DPT_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v20, 0xc

    goto/16 :goto_1

    :sswitch_1c
    const-string v10, "MEASLES_RUBELLA_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v0, 0xb

    const/16 v20, 0xb

    goto/16 :goto_1

    :sswitch_1d
    const-string v10, "MEASLES_RUBELLA_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v0, 0xa

    const/16 v20, 0xa

    goto/16 :goto_1

    :sswitch_1e
    const-string v10, "PENTA_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v20, 0x9

    goto/16 :goto_1

    :sswitch_1f
    const-string v10, "PENTA_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v20, 0x8

    goto/16 :goto_1

    :sswitch_20
    const-string v10, "PENTA_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_1

    :cond_21
    const/4 v0, 0x7

    const/16 v20, 0x7

    goto :goto_1

    :sswitch_21
    const-string v10, "PCV_BOOSTER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_1

    :cond_22
    const/16 v20, 0x6

    goto :goto_1

    :sswitch_22
    const-string v10, "BCG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_1

    :cond_23
    const/16 v20, 0x5

    goto :goto_1

    :sswitch_23
    const-string v10, "HEPATITIS_B_0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_1

    :cond_24
    const/16 v20, 0x4

    goto :goto_1

    :sswitch_24
    const-string v10, "OPV_BOOSTER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_1

    :cond_25
    const/4 v0, 0x3

    const/16 v20, 0x3

    goto :goto_1

    :sswitch_25
    const-string v10, "F_IPV_2_05"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_1

    :cond_26
    const/16 v20, 0x2

    goto :goto_1

    :sswitch_26
    const-string v10, "F_IPV_2_01"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_1

    :cond_27
    const/16 v20, 0x1

    goto :goto_1

    :sswitch_27
    const-string v10, "F_IPV_1_01"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_1

    :cond_28
    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_1
    const/16 v0, 0x54

    const/16 v10, 0x3c

    packed-switch v20, :pswitch_data_0

    move-object/from16 v7, v16

    :goto_2
    move-object/from16 v8, v18

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 2512
    :pswitch_0
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2513
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 2514
    const-string v10, "DPT_BOOSTER"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_29

    .line 2516
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v9, 0x6

    .line 2517
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 2518
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_29

    .line 2519
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v7, v4

    .line 2522
    :cond_29
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2523
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2524
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto :goto_3

    :pswitch_1
    const/16 v7, 0x10

    .line 2488
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2489
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 2490
    const-string v10, "DPT_3"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Date;

    if-eqz v10, :cond_2a

    .line 2492
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v10, 0x6

    .line 2493
    invoke-virtual {v4, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2494
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_2a

    .line 2495
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 2498
    :cond_2a
    const-string v10, "PENTA_3"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_2b

    .line 2500
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v9, 0x6

    .line 2501
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 2502
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_2b

    .line 2503
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v7, v4

    .line 2506
    :cond_2b
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2507
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2508
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_2
    const/16 v0, 0x8

    .line 2537
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2538
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/4 v0, -0x8

    .line 2539
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2540
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2541
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    .line 2850
    :pswitch_3
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2851
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2852
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_2c

    .line 2854
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x20

    .line 2855
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2856
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    cmp-long v7, v19, v21

    if-lez v7, :cond_2c

    .line 2857
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2860
    :cond_2c
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_2d

    .line 2862
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    .line 2863
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2864
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    cmp-long v7, v19, v21

    if-lez v7, :cond_2d

    .line 2865
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2868
    :cond_2d
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_2e

    .line 2870
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x18

    .line 2871
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2872
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_2e

    .line 2873
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2876
    :cond_2e
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_2f

    .line 2878
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x14

    .line 2879
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2880
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v7, v14, v16

    if-lez v7, :cond_2f

    .line 2881
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2884
    :cond_2f
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_30

    .line 2886
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x10

    .line 2887
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2888
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_30

    .line 2889
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2892
    :cond_30
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_31

    .line 2894
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xc

    .line 2895
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2896
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_31

    .line 2897
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2900
    :cond_31
    const-string v7, "VITAMIN_A_7"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_32

    .line 2902
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2903
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2904
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_32

    .line 2905
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2908
    :cond_32
    const-string v7, "VITAMIN_A_8"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_33

    .line 2910
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2911
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2912
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_33

    .line 2913
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_33
    move-object v7, v0

    .line 2916
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x48

    .line 2917
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2918
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_4
    const/16 v0, 0x36

    .line 2786
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2787
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2788
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_34

    .line 2790
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    .line 2791
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2792
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    cmp-long v7, v19, v21

    if-lez v7, :cond_34

    .line 2793
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2796
    :cond_34
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_35

    .line 2798
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x18

    .line 2799
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2800
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_35

    .line 2801
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2804
    :cond_35
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_36

    .line 2806
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x14

    .line 2807
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2808
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_36

    .line 2809
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2812
    :cond_36
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_37

    .line 2814
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x10

    .line 2815
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2816
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v7, v14, v16

    if-lez v7, :cond_37

    .line 2817
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2820
    :cond_37
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_38

    .line 2822
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xc

    .line 2823
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2824
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_38

    .line 2825
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2828
    :cond_38
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_39

    .line 2830
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2831
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2832
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_39

    .line 2833
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2836
    :cond_39
    const-string v7, "VITAMIN_A_7"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3a

    .line 2838
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2839
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2840
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_3a

    .line 2841
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_3a
    move-object v7, v0

    .line 2844
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2845
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2846
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_5
    const/16 v0, 0x30

    .line 2730
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2731
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2732
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3b

    .line 2734
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x18

    .line 2735
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2736
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_3b

    .line 2737
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2740
    :cond_3b
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3c

    .line 2742
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x14

    .line 2743
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2744
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_3c

    .line 2745
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2748
    :cond_3c
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3d

    .line 2750
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x10

    .line 2751
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2752
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_3d

    .line 2753
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2756
    :cond_3d
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3e

    .line 2758
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xc

    .line 2759
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2760
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v7, v14, v16

    if-lez v7, :cond_3e

    .line 2761
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2764
    :cond_3e
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_3f

    .line 2766
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2767
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2768
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_3f

    .line 2769
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2772
    :cond_3f
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_40

    .line 2774
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2775
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2776
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_40

    .line 2777
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_40
    move-object v7, v0

    .line 2780
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2781
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2782
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_6
    const/16 v0, 0x2a

    .line 2682
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2683
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2684
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_41

    .line 2686
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x14

    .line 2687
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2688
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_41

    .line 2689
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2692
    :cond_41
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_42

    .line 2694
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x10

    .line 2695
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2696
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v7, v11, v16

    if-lez v7, :cond_42

    .line 2697
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2700
    :cond_42
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_43

    .line 2702
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xc

    .line 2703
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2704
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v7, v11, v16

    if-lez v7, :cond_43

    .line 2705
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2708
    :cond_43
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_44

    .line 2710
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2711
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2712
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v7, v11, v14

    if-lez v7, :cond_44

    .line 2713
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2716
    :cond_44
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_45

    .line 2718
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2719
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2720
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_45

    .line 2721
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_45
    move-object v7, v0

    .line 2724
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2725
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2726
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_7
    const/16 v0, 0x24

    .line 2642
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2643
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2644
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_46

    .line 2646
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x10

    .line 2647
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2648
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v7, v16, v19

    if-lez v7, :cond_46

    .line 2649
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2652
    :cond_46
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_47

    .line 2654
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xc

    .line 2655
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2656
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v7, v11, v16

    if-lez v7, :cond_47

    .line 2657
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2660
    :cond_47
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_48

    .line 2662
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2663
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2664
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_48

    .line 2665
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2668
    :cond_48
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_49

    .line 2670
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2671
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2672
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_49

    .line 2673
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_49
    move-object v7, v0

    .line 2676
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2677
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2678
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_8
    const/16 v0, 0x1e

    .line 2610
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2611
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2612
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4a

    .line 2614
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xc

    .line 2615
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2616
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    cmp-long v7, v15, v17

    if-lez v7, :cond_4a

    .line 2617
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2620
    :cond_4a
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4b

    .line 2622
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2623
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2624
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v7, v11, v15

    if-lez v7, :cond_4b

    .line 2625
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2628
    :cond_4b
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4c

    .line 2630
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2631
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2632
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_4c

    .line 2633
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_4c
    move-object v7, v0

    .line 2636
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2637
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2638
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_9
    const/16 v0, 0x18

    .line 2586
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2587
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2588
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4d

    .line 2590
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8

    .line 2591
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2592
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_4d

    .line 2593
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2596
    :cond_4d
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4e

    .line 2598
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2599
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2600
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_4e

    .line 2601
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_4e
    move-object v7, v0

    .line 2604
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2605
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2606
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_a
    const/16 v0, 0x10

    .line 2570
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2571
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2572
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_4f

    .line 2574
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x4

    .line 2575
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2576
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_4f

    .line 2577
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_4f
    move-object v7, v0

    .line 2580
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2581
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2582
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_b
    const/16 v0, 0x9

    .line 2528
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2529
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v0, -0x9

    .line 2530
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x18

    .line 2531
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2532
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_c
    const/16 v0, 0x62

    const/4 v7, 0x5

    .line 2407
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2408
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2409
    const-string v10, "ROTA_VIRUS_1"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Date;

    if-eqz v10, :cond_50

    .line 2411
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v10, 0x38

    .line 2412
    invoke-virtual {v4, v7, v10}, Ljava/util/Calendar;->add(II)V

    .line 2413
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_50

    .line 2414
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2417
    :cond_50
    const-string v7, "ROTA_VIRUS_2"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_51

    .line 2419
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    const/4 v9, 0x5

    .line 2420
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 2421
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_51

    .line 2422
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_51
    move-object v7, v0

    .line 2425
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x18

    .line 2426
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2427
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_d
    const/16 v0, 0x46

    const/4 v7, 0x5

    .line 2391
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2392
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2393
    const-string v10, "ROTA_VIRUS_1"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_52

    .line 2395
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x1c

    .line 2396
    invoke-virtual {v4, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 2397
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_52

    .line 2398
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_52
    move-object v7, v0

    .line 2401
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x18

    .line 2402
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2403
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_e
    const/16 v0, 0xe

    const/4 v7, 0x1

    .line 2931
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2932
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2933
    const-string v5, "TD_10"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    if-eqz v5, :cond_53

    .line 2935
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x3

    .line 2936
    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 2937
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-lez v3, :cond_53

    .line 2938
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_53
    move-object v7, v0

    goto/16 :goto_2

    :pswitch_f
    const/16 v0, 0x8

    const/4 v7, 0x1

    .line 2922
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2923
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2924
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0xd

    .line 2925
    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0x16c

    const/4 v5, 0x6

    .line 2926
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 2927
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_4

    :pswitch_10
    const/16 v0, 0x62

    const/4 v7, 0x5

    .line 2351
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2352
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2353
    const-string v10, "PCV_1"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_54

    .line 2355
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x38

    .line 2356
    invoke-virtual {v4, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 2357
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_54

    .line 2358
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_54
    move-object v7, v0

    .line 2361
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xc

    .line 2362
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2363
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_11
    const/16 v0, 0x62

    const/4 v7, 0x5

    .line 2260
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2261
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2262
    const-string v11, "OPV_1"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    if-eqz v11, :cond_55

    .line 2264
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v11, 0x38

    .line 2265
    invoke-virtual {v4, v7, v11}, Ljava/util/Calendar;->add(II)V

    .line 2266
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_55

    .line 2267
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2270
    :cond_55
    const-string v7, "OPV_2"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_56

    .line 2272
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    const/4 v9, 0x5

    .line 2273
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 2274
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_56

    .line 2275
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_56
    move-object v7, v0

    .line 2278
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2279
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2280
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_12
    const/16 v0, 0x46

    const/4 v7, 0x5

    .line 2244
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2245
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2246
    const-string v11, "OPV_1"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_57

    .line 2248
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x1c

    .line 2249
    invoke-virtual {v4, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 2250
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_57

    .line 2251
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_57
    move-object v7, v0

    .line 2254
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2255
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2256
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_13
    const/16 v0, 0x2a

    const/4 v7, 0x5

    .line 2236
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2237
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/16 v4, -0x2a

    .line 2238
    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 2239
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2240
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto :goto_4

    :pswitch_14
    const/4 v7, 0x5

    .line 2230
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/16 v4, 0xf

    .line 2231
    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 2232
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    :goto_4
    move-object v7, v0

    goto/16 :goto_3

    :pswitch_15
    const/4 v7, 0x5

    const/16 v10, 0xe

    .line 2464
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2465
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 2466
    const-string v11, "DPT_1"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    if-eqz v11, :cond_58

    .line 2468
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v11, 0x38

    .line 2469
    invoke-virtual {v4, v7, v11}, Ljava/util/Calendar;->add(II)V

    .line 2470
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_58

    .line 2471
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 2474
    :cond_58
    const-string v7, "DPT_2"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_59

    .line 2476
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    const/4 v9, 0x5

    .line 2477
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 2478
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_59

    .line 2479
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v7, v4

    goto :goto_5

    :cond_59
    move-object v7, v10

    .line 2482
    :goto_5
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2483
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2484
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_16
    const/16 v7, 0xd

    .line 2448
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2449
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 2450
    const-string v10, "DPT_1"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_5a

    .line 2452
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x1c

    const/4 v10, 0x5

    .line 2453
    invoke-virtual {v4, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 2454
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_5a

    .line 2455
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v7, v4

    .line 2458
    :cond_5a
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2459
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2460
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_17
    const/16 v4, 0xc

    .line 2440
    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 2441
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v4, -0xc

    .line 2442
    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 2443
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2444
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_18
    const/16 v0, 0x10

    .line 2554
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2555
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2556
    const-string v7, "MEASLES_RUBELLA_1"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_5b

    .line 2558
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    const/4 v9, 0x5

    .line 2559
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 2560
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_5b

    .line 2561
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_5b
    move-object v7, v0

    .line 2564
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2565
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2566
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_19
    const/16 v0, 0x9

    .line 2546
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2547
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v0, -0x9

    .line 2548
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2549
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2550
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_1a
    const/16 v0, 0x62

    const/4 v7, 0x5

    .line 2327
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2328
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2329
    const-string v11, "PENTA_1"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    if-eqz v11, :cond_5c

    .line 2331
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v11, 0x38

    .line 2332
    invoke-virtual {v4, v7, v11}, Ljava/util/Calendar;->add(II)V

    .line 2333
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_5c

    .line 2334
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2337
    :cond_5c
    const-string v7, "PENTA_2"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_5d

    .line 2339
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x1c

    const/4 v9, 0x5

    .line 2340
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 2341
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_5d

    .line 2342
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_5d
    move-object v7, v0

    .line 2345
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2346
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2347
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_1b
    const/16 v0, 0x46

    const/4 v7, 0x5

    .line 2311
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 2312
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2313
    const-string v11, "PENTA_1"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Date;

    if-eqz v9, :cond_5e

    .line 2315
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0x1c

    .line 2316
    invoke-virtual {v4, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 2317
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-lez v7, :cond_5e

    .line 2318
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_5e
    move-object v7, v0

    .line 2321
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2322
    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 2323
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_1c
    const/16 v0, 0x9

    .line 2366
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2367
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2368
    const-string v7, "PCV_1"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_5f

    .line 2370
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x70

    const/4 v10, 0x5

    .line 2371
    invoke-virtual {v4, v10, v7}, Ljava/util/Calendar;->add(II)V

    .line 2372
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_5f

    .line 2373
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2376
    :cond_5f
    const-string v7, "PCV_2"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_60

    .line 2378
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x38

    const/4 v9, 0x5

    .line 2379
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 2380
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_60

    .line 2381
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_60
    move-object v7, v0

    .line 2384
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xc

    .line 2385
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2386
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    .line 2224
    :pswitch_1d
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/4 v0, 0x1

    .line 2225
    invoke-virtual {v3, v0, v0}, Ljava/util/Calendar;->add(II)V

    .line 2226
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_6

    :pswitch_1e
    const/4 v0, 0x1

    .line 2217
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/4 v4, 0x5

    .line 2218
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 2219
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto/16 :goto_3

    :pswitch_1f
    const/16 v0, 0x10

    .line 2284
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 2285
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2286
    const-string v7, "OPV_3"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    if-eqz v7, :cond_61

    .line 2288
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x6

    .line 2289
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2290
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_61

    .line 2291
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_61
    move-object v7, v0

    .line 2294
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    const/4 v4, 0x5

    .line 2295
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 2296
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto :goto_6

    :pswitch_20
    const/4 v0, 0x1

    const/4 v4, 0x5

    const/16 v5, 0x62

    .line 2432
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 2433
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v5, -0x62

    .line 2434
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0xc

    .line 2435
    invoke-virtual {v3, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 2436
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    goto :goto_6

    :pswitch_21
    const/4 v0, 0x1

    const/4 v4, 0x5

    const/16 v5, 0xc

    const/16 v7, 0x2a

    .line 2303
    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 2304
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v9, -0x2a

    .line 2305
    invoke-virtual {v3, v4, v9}, Ljava/util/Calendar;->add(II)V

    .line 2306
    invoke-virtual {v3, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 2307
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    :goto_6
    if-nez p5, :cond_63

    .line 2945
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_62

    goto :goto_7

    :cond_62
    const/4 v0, 0x0

    goto :goto_7

    .line 2947
    :cond_63
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2948
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2949
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_62

    goto :goto_7

    .line 2950
    :cond_64
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2952
    :cond_65
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2953
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6f4a6128 -> :sswitch_27
        -0x6f49ecc9 -> :sswitch_26
        -0x6f49ecc5 -> :sswitch_25
        -0x2c422c3a -> :sswitch_24
        -0x27a1c3d1 -> :sswitch_23
        0x10026 -> :sswitch_22
        0xe7c7f4 -> :sswitch_21
        0x2233f58 -> :sswitch_20
        0x2233f59 -> :sswitch_1f
        0x2233f5a -> :sswitch_1e
        0x351009e -> :sswitch_1d
        0x351009f -> :sswitch_1c
        0x3e3e2fa -> :sswitch_1b
        0x3e3e2fb -> :sswitch_1a
        0x3e3e2fc -> :sswitch_19
        0x47eed06 -> :sswitch_18
        0x47eed07 -> :sswitch_17
        0x47eed08 -> :sswitch_16
        0x47eed09 -> :sswitch_15
        0x4871bb5 -> :sswitch_14
        0x4871bb6 -> :sswitch_13
        0x4c00a4e -> :sswitch_12
        0x4c00a54 -> :sswitch_11
        0xa18317a -> :sswitch_10
        0xa18317b -> :sswitch_f
        0xa18317c -> :sswitch_e
        0x1d3af6ca -> :sswitch_d
        0x1eaf0fc6 -> :sswitch_c
        0x1eaf0fc7 -> :sswitch_b
        0x1eaf0fc8 -> :sswitch_a
        0x1eaf0fc9 -> :sswitch_9
        0x1eaf0fca -> :sswitch_8
        0x1eaf0fcb -> :sswitch_7
        0x1eaf0fcc -> :sswitch_6
        0x1eaf0fcd -> :sswitch_5
        0x1eaf0fce -> :sswitch_4
        0x3d08f914 -> :sswitch_3
        0x3d08f91e -> :sswitch_2
        0x45614779 -> :sswitch_1
        0x722d58ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_21
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
        :pswitch_21
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_21
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_19
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public vaccinationValidationForChild(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 531
    const-string v0, "Please select a date"

    return-object v0

    .line 533
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 534
    invoke-static/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 539
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 540
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 541
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 544
    const-string v7, "PENTA_1"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    const-string v7, "PENTA_2"

    .line 545
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "PENTA_3"

    .line 546
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    .line 548
    :goto_1
    const-string v9, "DPT_1"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "DPT_2"

    .line 549
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "DPT_3"

    .line 550
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x1

    .line 552
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, -0x1

    .line 553
    invoke-virtual {v10, v8, v11}, Ljava/util/Calendar;->add(II)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "VITAMIN_A_6"

    const-string v12, "OPV_3"

    const-string v13, "VITAMIN_A_5"

    const-string v15, "VITAMIN_A_4"

    const-string v14, "VITAMIN_A_3"

    const-string v8, "VITAMIN_A_2"

    move-object/from16 v17, v2

    const-string v2, "VITAMIN_A_1"

    move/from16 v18, v9

    const/4 v9, 0x2

    const/16 v21, -0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v10, "DPT_BOOSTER_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 v10, 0x27

    const/16 v21, 0x27

    goto/16 :goto_4

    :sswitch_1
    const-string v10, "DPT_BOOSTER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_4

    :cond_7
    const/16 v10, 0x26

    const/16 v21, 0x26

    goto/16 :goto_4

    :sswitch_2
    const-string v10, "VITAMIN_K"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_4

    :cond_8
    const/16 v10, 0x25

    const/16 v21, 0x25

    goto/16 :goto_4

    :sswitch_3
    const-string v10, "VITAMIN_A"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto/16 :goto_4

    :cond_9
    const/16 v10, 0x24

    const/16 v21, 0x24

    goto/16 :goto_4

    :sswitch_4
    const-string v10, "VITAMIN_A_9"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_4

    :cond_a
    const/16 v10, 0x23

    const/16 v21, 0x23

    goto/16 :goto_4

    :sswitch_5
    const-string v10, "VITAMIN_A_8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_4

    :cond_b
    const/16 v10, 0x22

    const/16 v21, 0x22

    goto/16 :goto_4

    :sswitch_6
    const-string v10, "VITAMIN_A_7"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_4

    :cond_c
    const/16 v10, 0x21

    const/16 v21, 0x21

    goto/16 :goto_4

    :sswitch_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_4

    :cond_d
    const/16 v10, 0x20

    const/16 v21, 0x20

    goto/16 :goto_4

    :sswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_4

    :cond_e
    const/16 v10, 0x1f

    const/16 v21, 0x1f

    goto/16 :goto_4

    :sswitch_9
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_4

    :cond_f
    const/16 v10, 0x1e

    const/16 v21, 0x1e

    goto/16 :goto_4

    :sswitch_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_4

    :cond_10
    const/16 v10, 0x1d

    const/16 v21, 0x1d

    goto/16 :goto_4

    :sswitch_b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_4

    :cond_11
    const/16 v21, 0x1c

    goto/16 :goto_4

    :sswitch_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_4

    :cond_12
    const/16 v10, 0x1b

    const/16 v21, 0x1b

    goto/16 :goto_4

    :sswitch_d
    const-string v10, "F_IPV_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto/16 :goto_4

    :cond_13
    const/16 v10, 0x1a

    const/16 v21, 0x1a

    goto/16 :goto_4

    :sswitch_e
    const-string v10, "ROTA_VIRUS_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v10, 0x19

    const/16 v21, 0x19

    goto/16 :goto_4

    :sswitch_f
    const-string v10, "ROTA_VIRUS_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_4

    :cond_15
    const/16 v21, 0x18

    goto/16 :goto_4

    :sswitch_10
    const-string v10, "ROTA_VIRUS_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_4

    :cond_16
    const/16 v10, 0x17

    const/16 v21, 0x17

    goto/16 :goto_4

    :sswitch_11
    const-string v10, "TD_16"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_4

    :cond_17
    const/16 v10, 0x16

    const/16 v21, 0x16

    goto/16 :goto_4

    :sswitch_12
    const-string v10, "TD_10"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v10, 0x15

    const/16 v21, 0x15

    goto/16 :goto_4

    :sswitch_13
    const-string v10, "PCV_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto/16 :goto_4

    :cond_19
    const/16 v21, 0x14

    goto/16 :goto_4

    :sswitch_14
    const-string v10, "PCV_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v10, 0x13

    const/16 v21, 0x13

    goto/16 :goto_4

    :sswitch_15
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v10, 0x12

    const/16 v21, 0x12

    goto/16 :goto_4

    :sswitch_16
    const-string v10, "OPV_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v10, 0x11

    const/16 v21, 0x11

    goto/16 :goto_4

    :sswitch_17
    const-string v10, "OPV_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v21, 0x10

    goto/16 :goto_4

    :sswitch_18
    const-string v10, "OPV_0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v10, 0xf

    const/16 v21, 0xf

    goto/16 :goto_4

    :sswitch_19
    const-string v10, "DPT_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto/16 :goto_4

    :cond_1f
    const/16 v10, 0xe

    const/16 v21, 0xe

    goto/16 :goto_4

    :sswitch_1a
    const-string v10, "DPT_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    goto/16 :goto_4

    :cond_20
    const/16 v10, 0xd

    const/16 v21, 0xd

    goto/16 :goto_4

    :sswitch_1b
    const-string v10, "DPT_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    goto/16 :goto_4

    :cond_21
    const/16 v21, 0xc

    goto/16 :goto_4

    :sswitch_1c
    const-string v10, "MEASLES_RUBELLA_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_22

    goto/16 :goto_4

    :cond_22
    const/16 v10, 0xb

    const/16 v21, 0xb

    goto/16 :goto_4

    :sswitch_1d
    const-string v10, "MEASLES_RUBELLA_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    goto/16 :goto_4

    :cond_23
    const/16 v10, 0xa

    const/16 v21, 0xa

    goto/16 :goto_4

    :sswitch_1e
    const-string v10, "PENTA_3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v21, 0x9

    goto/16 :goto_4

    :sswitch_1f
    const-string v10, "PENTA_2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v21, 0x8

    goto/16 :goto_4

    :sswitch_20
    const-string v10, "PENTA_1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    goto :goto_4

    :cond_26
    const/4 v10, 0x7

    const/16 v21, 0x7

    goto :goto_4

    :sswitch_21
    const-string v10, "PCV_BOOSTER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    goto :goto_4

    :cond_27
    const/16 v21, 0x6

    goto :goto_4

    :sswitch_22
    const-string v10, "BCG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    goto :goto_4

    :cond_28
    const/16 v21, 0x5

    goto :goto_4

    :sswitch_23
    const-string v10, "HEPATITIS_B_0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    goto :goto_4

    :cond_29
    const/16 v21, 0x4

    goto :goto_4

    :sswitch_24
    const-string v10, "OPV_BOOSTER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    goto :goto_4

    :cond_2a
    const/4 v10, 0x3

    const/16 v21, 0x3

    goto :goto_4

    :sswitch_25
    const-string v10, "F_IPV_2_05"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_4

    :cond_2b
    const/16 v21, 0x2

    goto :goto_4

    :sswitch_26
    const-string v10, "F_IPV_2_01"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    goto :goto_4

    :cond_2c
    const/16 v21, 0x1

    goto :goto_4

    :sswitch_27
    const-string v10, "F_IPV_1_01"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    goto :goto_4

    :cond_2d
    const/4 v10, 0x0

    const/16 v21, 0x0

    :goto_4
    const/16 v10, 0x3c

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_7

    .line 937
    :pswitch_0
    const-string v0, "DPT_BOOSTER"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_2e

    .line 939
    const-string v0, "DPT Booster-1 has not been given yet"

    return-object v0

    .line 941
    :cond_2e
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2f

    .line 942
    const-string v0, "DPT Booster-2 should be given at least 6 months after the DPT Booster-1 dose"

    return-object v0

    .line 944
    :cond_2f
    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x54

    .line 945
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 946
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 947
    :cond_30
    const-string v0, "DPT Booster-2 should be given between 5 and 7 years after birth"

    return-object v0

    .line 915
    :pswitch_1
    const-string v0, "DPT_3"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 916
    const-string v2, "PENTA_3"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    if-nez v0, :cond_31

    if-nez v1, :cond_31

    .line 919
    const-string v0, "DPT-3 or PENTA-3 is required before DPT Booster"

    return-object v0

    :cond_31
    if-eqz v0, :cond_32

    .line 922
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_33

    .line 923
    const-string v0, "DPT Booster should be given at least 6 months after DPT-3"

    return-object v0

    :cond_32
    const/4 v2, 0x6

    :cond_33
    if-eqz v1, :cond_34

    .line 926
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    if-ge v0, v2, :cond_34

    .line 927
    const-string v0, "DPT Booster should be given at least 6 months after PENTA-3"

    return-object v0

    :cond_34
    const/16 v0, 0x10

    .line 929
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x54

    .line 930
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 931
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 932
    :cond_35
    const-string v0, "DPT Booster should be given between 16 months and 7 years after birth"

    return-object v0

    .line 952
    :pswitch_2
    const-string v0, "VITAMIN_A"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_36

    .line 953
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 954
    const-string v0, "Vitamin A cannot be given before the previous dose date."

    return-object v0

    :cond_36
    const/16 v0, 0x8

    .line 956
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 957
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 958
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 959
    :cond_37
    const-string v0, "Vitamin A should be given between 8 months and 5 years from the date of birth."

    return-object v0

    .line 1360
    :pswitch_3
    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x48

    .line 1361
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1363
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_38

    .line 1364
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x20

    if-ge v2, v7, :cond_38

    .line 1365
    const-string v0, "Vitamin A 9 should be given at least 2 years 8 months after Vitamin A 1."

    return-object v0

    :cond_38
    if-eqz v0, :cond_39

    .line 1368
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x20

    .line 1369
    invoke-virtual {v5, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1370
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    cmp-long v0, v16, v21

    if-lez v0, :cond_39

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1371
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1374
    :cond_39
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_3a

    .line 1375
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x1c

    if-ge v2, v7, :cond_3b

    .line 1376
    const-string v0, "Vitamin A 9 should be given at least 2 years 8 months after Vitamin A 1."

    return-object v0

    :cond_3a
    const/16 v7, 0x1c

    :cond_3b
    if-eqz v0, :cond_3c

    .line 1379
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1380
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1381
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v7, v16

    if-lez v0, :cond_3c

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1382
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1385
    :cond_3c
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_3d

    .line 1386
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x18

    if-ge v2, v7, :cond_3e

    .line 1387
    const-string v0, "Vitamin A 9 should be given at least 2 years after Vitamin A 3."

    return-object v0

    :cond_3d
    const/16 v7, 0x18

    :cond_3e
    if-eqz v0, :cond_3f

    .line 1390
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1391
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1392
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v7, v16

    if-lez v0, :cond_3f

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1393
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1396
    :cond_3f
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_40

    .line 1397
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x14

    if-ge v2, v7, :cond_41

    .line 1398
    const-string v0, "Vitamin A 9 should be given at least 1 year 8 months after Vitamin A 4."

    return-object v0

    :cond_40
    const/16 v7, 0x14

    :cond_41
    if-eqz v0, :cond_42

    .line 1401
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1402
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1403
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v0, v7, v14

    if-lez v0, :cond_42

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1404
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1407
    :cond_42
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_43

    .line 1408
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x10

    if-ge v2, v7, :cond_44

    .line 1409
    const-string v0, "Vitamin A 9 should be given at least 1 year 4 months after Vitamin A 5."

    return-object v0

    :cond_43
    const/16 v7, 0x10

    :cond_44
    if-eqz v0, :cond_45

    .line 1412
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1413
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1414
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v0, v7, v12

    if-lez v0, :cond_45

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1415
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1418
    :cond_45
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_46

    .line 1419
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0xc

    if-ge v2, v7, :cond_47

    .line 1420
    const-string v0, "Vitamin A 9 should be given at least 1 year after Vitamin A 6."

    return-object v0

    :cond_46
    const/16 v7, 0xc

    :cond_47
    if-eqz v0, :cond_48

    .line 1423
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1424
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1425
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_48

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1426
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1429
    :cond_48
    const-string v0, "VITAMIN_A_7"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_49

    .line 1430
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_4a

    .line 1431
    const-string v0, "Vitamin A 9 should be given at least 8 months after Vitamin A 7."

    return-object v0

    :cond_49
    const/16 v7, 0x8

    :cond_4a
    if-eqz v0, :cond_4b

    .line 1434
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1435
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1436
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_4b

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1437
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1440
    :cond_4b
    const-string v0, "VITAMIN_A_8"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_4c

    .line 1441
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_4d

    .line 1442
    const-string v0, "Vitamin A 9 should be given at least 4 months after Vitamin A 8."

    return-object v0

    :cond_4c
    const/4 v2, 0x4

    :cond_4d
    if-eqz v0, :cond_4e

    .line 1445
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1446
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1447
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_4e

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1448
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1451
    :cond_4e
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1452
    :cond_4f
    const-string v0, "Vitamin A 9 should be given between 5 and 6 years of age."

    return-object v0

    :pswitch_4
    const/16 v0, 0x36

    .line 1275
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1276
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1277
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_50

    .line 1278
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x1c

    if-ge v2, v7, :cond_51

    .line 1279
    const-string v0, "Vitamin A 8 should be given at least 2 years 4 months after Vitamin A 1."

    return-object v0

    :cond_50
    const/16 v7, 0x1c

    :cond_51
    if-eqz v0, :cond_52

    .line 1282
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1283
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1284
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v0, v16, v19

    if-lez v0, :cond_52

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1285
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1288
    :cond_52
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 1289
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x18

    if-ge v2, v7, :cond_54

    .line 1290
    const-string v0, "Vitamin A 8 should be given at least 2 years after Vitamin A 2."

    return-object v0

    :cond_53
    const/16 v7, 0x18

    :cond_54
    if-eqz v0, :cond_55

    .line 1293
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1294
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1295
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v7, v16

    if-lez v0, :cond_55

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1296
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1299
    :cond_55
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_56

    .line 1300
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x14

    if-ge v2, v7, :cond_57

    .line 1301
    const-string v0, "Vitamin A 8 should be given at least 1 year 8 months after Vitamin A 3."

    return-object v0

    :cond_56
    const/16 v7, 0x14

    :cond_57
    if-eqz v0, :cond_58

    .line 1304
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1305
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1306
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v7, v16

    if-lez v0, :cond_58

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1307
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1310
    :cond_58
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_59

    .line 1311
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x10

    if-ge v2, v7, :cond_5a

    .line 1312
    const-string v0, "Vitamin A 8 should be given at least 1 year 4 months after Vitamin A 4."

    return-object v0

    :cond_59
    const/16 v7, 0x10

    :cond_5a
    if-eqz v0, :cond_5b

    .line 1315
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1316
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1317
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v0, v7, v14

    if-lez v0, :cond_5b

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1318
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1321
    :cond_5b
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_5c

    .line 1322
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0xc

    if-ge v2, v7, :cond_5d

    .line 1323
    const-string v0, "Vitamin A 8 should be given at least 1 year after Vitamin A 5."

    return-object v0

    :cond_5c
    const/16 v7, 0xc

    :cond_5d
    if-eqz v0, :cond_5e

    .line 1326
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1327
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1328
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v0, v7, v12

    if-lez v0, :cond_5e

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1329
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1332
    :cond_5e
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_5f

    .line 1333
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_60

    .line 1334
    const-string v0, "Vitamin A 8 should be given at least 8 months after Vitamin A 6."

    return-object v0

    :cond_5f
    const/16 v7, 0x8

    :cond_60
    if-eqz v0, :cond_61

    .line 1337
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1338
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1339
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_61

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1340
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1343
    :cond_61
    const-string v0, "VITAMIN_A_7"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_62

    .line 1344
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_63

    .line 1345
    const-string v0, "Vitamin A 8 should be given at least 4 months after Vitamin A 7."

    return-object v0

    :cond_62
    const/4 v2, 0x4

    :cond_63
    if-eqz v0, :cond_64

    .line 1348
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1349
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1350
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_64

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1351
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1354
    :cond_64
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1355
    :cond_65
    const-string v0, "Vitamin A 8 should be given between 4.5 and 5 years of age."

    return-object v0

    :pswitch_5
    const/16 v0, 0x30

    .line 1201
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1202
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1203
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_66

    .line 1204
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x18

    if-ge v2, v7, :cond_67

    .line 1205
    const-string v0, "Vitamin A 7 should be given at least 2 years after Vitamin A 1."

    return-object v0

    :cond_66
    const/16 v7, 0x18

    :cond_67
    if-eqz v0, :cond_68

    .line 1208
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1209
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1210
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v0, v16, v19

    if-lez v0, :cond_68

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 1211
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1214
    :cond_68
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_69

    .line 1215
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x14

    if-ge v2, v7, :cond_6a

    .line 1216
    const-string v0, "Vitamin A 7 should be given at least 2 years after Vitamin A 1."

    return-object v0

    :cond_69
    const/16 v7, 0x14

    :cond_6a
    if-eqz v0, :cond_6b

    .line 1219
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1220
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1221
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v7, v16

    if-lez v0, :cond_6b

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1222
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1225
    :cond_6b
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_6c

    .line 1226
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x10

    if-ge v2, v7, :cond_6d

    .line 1227
    const-string v0, "Vitamin A 7 should be given at least 1 year 4 months after Vitamin A 3."

    return-object v0

    :cond_6c
    const/16 v7, 0x10

    :cond_6d
    if-eqz v0, :cond_6e

    .line 1230
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1231
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1232
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v7, v16

    if-lez v0, :cond_6e

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1233
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1236
    :cond_6e
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_6f

    .line 1237
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0xc

    if-ge v2, v7, :cond_70

    .line 1238
    const-string v0, "Vitamin A 7 should be given at least 1 year after Vitamin A 4."

    return-object v0

    :cond_6f
    const/16 v7, 0xc

    :cond_70
    if-eqz v0, :cond_71

    .line 1241
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1242
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1243
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    cmp-long v0, v7, v14

    if-lez v0, :cond_71

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1244
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1247
    :cond_71
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_72

    .line 1248
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_73

    .line 1249
    const-string v0, "Vitamin A 7 should be given at least 8 months after Vitamin A 5."

    return-object v0

    :cond_72
    const/16 v7, 0x8

    :cond_73
    if-eqz v0, :cond_74

    .line 1252
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1253
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1254
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v0, v7, v12

    if-lez v0, :cond_74

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 1255
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1258
    :cond_74
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_75

    .line 1259
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_76

    .line 1260
    const-string v0, "Vitamin A 7 should be given at least 4 months after Vitamin A 6."

    return-object v0

    :cond_75
    const/4 v2, 0x4

    :cond_76
    if-eqz v0, :cond_77

    .line 1263
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1264
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1265
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_77

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1266
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1269
    :cond_77
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1270
    :cond_78
    const-string v0, "Vitamin A 7 should be given between 4 and 5 years of birth."

    return-object v0

    :pswitch_6
    const/16 v0, 0x2a

    .line 1138
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1139
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1140
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_79

    .line 1141
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x14

    if-ge v2, v7, :cond_7a

    .line 1142
    const-string v0, "Vitamin A 6 should be given at least 1 year 8 months after Vitamin A 1."

    return-object v0

    :cond_79
    const/16 v7, 0x14

    :cond_7a
    if-eqz v0, :cond_7b

    .line 1145
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1146
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1147
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v0, v10, v16

    if-lez v0, :cond_7b

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1148
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1151
    :cond_7b
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_7c

    .line 1152
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x10

    if-ge v2, v7, :cond_7d

    .line 1153
    const-string v0, "Vitamin A 6 should be given at least 1 year 4 months after Vitamin A 2."

    return-object v0

    :cond_7c
    const/16 v7, 0x10

    :cond_7d
    if-eqz v0, :cond_7e

    .line 1156
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1157
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1158
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_7e

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1159
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1162
    :cond_7e
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_7f

    .line 1163
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0xc

    if-ge v2, v7, :cond_80

    .line 1164
    const-string v0, "Vitamin A 6 should be given at least 1 year after Vitamin A 3."

    return-object v0

    :cond_7f
    const/16 v7, 0xc

    :cond_80
    if-eqz v0, :cond_81

    .line 1167
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1168
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1169
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_81

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 1170
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1173
    :cond_81
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_82

    .line 1174
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_83

    .line 1175
    const-string v0, "Vitamin A 6 should be given at least 8 months after Vitamin A 4."

    return-object v0

    :cond_82
    const/16 v7, 0x8

    :cond_83
    if-eqz v0, :cond_84

    .line 1178
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1179
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1180
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_84

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 1181
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1184
    :cond_84
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_85

    .line 1185
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_86

    .line 1186
    const-string v0, "Vitamin A 6 should be given at least 4 months after Vitamin A 5."

    return-object v0

    :cond_85
    const/4 v2, 0x4

    :cond_86
    if-eqz v0, :cond_87

    .line 1189
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1190
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1191
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_87

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 1192
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1195
    :cond_87
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1196
    :cond_88
    const-string v0, "Vitamin A 6 should be given between 3.5 and 5 years of birth."

    return-object v0

    :pswitch_7
    const/16 v0, 0x24

    .line 1086
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1087
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1088
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_89

    .line 1089
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x10

    if-ge v2, v7, :cond_8a

    .line 1090
    const-string v0, "Vitamin A 5 should be given at least 1 year 4 months after Vitamin A 1."

    return-object v0

    :cond_89
    const/16 v7, 0x10

    :cond_8a
    if-eqz v0, :cond_8b

    .line 1093
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1094
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1095
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-lez v0, :cond_8b

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1096
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1099
    :cond_8b
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_8c

    .line 1100
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0xc

    if-ge v2, v7, :cond_8d

    .line 1101
    const-string v0, "Vitamin A 5 should be given at least 1 year after Vitamin A 2."

    return-object v0

    :cond_8c
    const/16 v7, 0xc

    :cond_8d
    if-eqz v0, :cond_8e

    .line 1104
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1105
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1106
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_8e

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1107
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1110
    :cond_8e
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_8f

    .line 1111
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_90

    .line 1112
    const-string v0, "Vitamin A 5 should be given at least 8 months after Vitamin A 3."

    return-object v0

    :cond_8f
    const/16 v7, 0x8

    :cond_90
    if-eqz v0, :cond_91

    .line 1115
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1116
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1117
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_91

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 1118
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1121
    :cond_91
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_92

    .line 1122
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_93

    .line 1123
    const-string v0, "Vitamin A 5 should be given at least 4 months after Vitamin A 4."

    return-object v0

    :cond_92
    const/4 v2, 0x4

    :cond_93
    if-eqz v0, :cond_94

    .line 1126
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1127
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1128
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_94

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 1129
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1132
    :cond_94
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_95

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1133
    :cond_95
    const-string v0, "Vitamin A 5 should be given between 3 and 5 years of birth."

    return-object v0

    :pswitch_8
    const/16 v0, 0x1e

    .line 1045
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1046
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1047
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_96

    .line 1048
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0xc

    if-ge v2, v7, :cond_97

    .line 1049
    const-string v0, "Vitamin A 4 should be given at least 1 year after Vitamin A 1."

    return-object v0

    :cond_96
    const/16 v7, 0xc

    :cond_97
    if-eqz v0, :cond_98

    .line 1052
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1053
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1054
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-lez v0, :cond_98

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 1055
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1058
    :cond_98
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_99

    .line 1059
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_9a

    .line 1060
    const-string v0, "Vitamin A 4 should be given at least 8 months after Vitamin A 2."

    return-object v0

    :cond_99
    const/16 v7, 0x8

    :cond_9a
    if-eqz v0, :cond_9b

    .line 1063
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1064
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1065
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-lez v0, :cond_9b

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1066
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1069
    :cond_9b
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_9c

    .line 1070
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_9d

    .line 1071
    const-string v0, "Vitamin A 4 should be given at least 4 months after Vitamin A 3."

    return-object v0

    :cond_9c
    const/4 v2, 0x4

    :cond_9d
    if-eqz v0, :cond_9e

    .line 1074
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1075
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1076
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_9e

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 1077
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1080
    :cond_9e
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_9f

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1081
    :cond_9f
    const-string v0, "Vitamin A 4 should be given between 30 months and 5 years of birth."

    return-object v0

    :pswitch_9
    const/16 v0, 0x18

    .line 1015
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 1016
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1017
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_a0

    .line 1018
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v7, 0x8

    if-ge v2, v7, :cond_a1

    .line 1019
    const-string v0, "Vitamin A 3 should be given at least 8 months after Vitamin A 1"

    return-object v0

    :cond_a0
    const/16 v7, 0x8

    :cond_a1
    if-eqz v0, :cond_a2

    .line 1022
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1023
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 1024
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-lez v0, :cond_a2

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 1025
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1028
    :cond_a2
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_a3

    .line 1029
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a4

    .line 1030
    const-string v0, "Vitamin A 3 should be given at least 4 months after Vitamin A 2."

    return-object v0

    :cond_a3
    const/4 v2, 0x4

    :cond_a4
    if-eqz v0, :cond_a5

    .line 1033
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1034
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1035
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_a5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1036
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1039
    :cond_a5
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1040
    :cond_a6
    const-string v0, "Vitamin A 3 should be given between 2 and 5 years of birth."

    return-object v0

    .line 996
    :pswitch_a
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_a7

    .line 997
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a8

    .line 998
    const-string v0, "Vitamin A 2 should be given at least 4 months after Vitamin A 1."

    return-object v0

    :cond_a7
    const/4 v2, 0x4

    :cond_a8
    const/16 v1, 0x10

    .line 1000
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->add(II)V

    .line 1001
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    if-eqz v0, :cond_a9

    .line 1003
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1004
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 1005
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_a9

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1006
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1009
    :cond_a9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_aa

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1010
    :cond_aa
    const-string v0, "Vitamin A 2 should be given between 16 months and 5 years of birth."

    return-object v0

    .line 737
    :pswitch_b
    const-string v0, "F_IPV_2_01"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_ab

    .line 739
    const-string v0, "F-IPV-2-01 is not given yet"

    return-object v0

    .line 742
    :cond_ab
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 743
    const-string v0, "F-IPV-3 can not be given before F-IPV-2-01 "

    return-object v0

    .line 746
    :cond_ac
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_ad

    .line 747
    const-string v0, "F-IPV-3 should be given after 56 days of F-IPV-2-01 given date"

    return-object v0

    :cond_ad
    const/16 v0, 0x9

    .line 749
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x18

    .line 750
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 751
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 752
    :cond_ae
    const-string v0, "F-IPV-3 should be given between 9 months and 2 years after birth"

    return-object v0

    .line 667
    :pswitch_c
    const-string v0, "ROTA_VIRUS_2"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_af

    .line 669
    const-string v0, "ROTA Virus-2 is not given yet"

    return-object v0

    .line 672
    :cond_af
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 673
    const-string v0, "ROTA Virus-3 can not be given before ROTA Virus-2 vaccine"

    return-object v0

    .line 676
    :cond_b0
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_b1

    .line 677
    const-string v0, "ROTA Virus-3 should be given after 28 days of ROTA Virus-2"

    return-object v0

    :cond_b1
    const/16 v0, 0x62

    const/4 v1, 0x5

    .line 680
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x18

    .line 681
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 682
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_b2

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 683
    :cond_b2
    const-string v0, "ROTA Virus-3 should be given between 14 weeks and 2 years after birth"

    return-object v0

    .line 647
    :pswitch_d
    const-string v0, "ROTA_VIRUS_1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_b3

    .line 649
    const-string v0, "ROTA Virus-1 is not given yet"

    return-object v0

    .line 652
    :cond_b3
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 653
    const-string v0, "ROTA Virus-2 can not be given before ROTA Virus-1 Vaccine"

    return-object v0

    .line 656
    :cond_b4
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_b5

    .line 657
    const-string v0, "ROTA Virus-2 should be given after 28 days of ROTA virus 1"

    return-object v0

    :cond_b5
    const/16 v0, 0x46

    const/4 v1, 0x5

    .line 660
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x18

    .line 661
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 662
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 663
    :cond_b6
    const-string v0, "ROTA Virus-2 should be given between 10 weeks and 2 years after birth "

    return-object v0

    :pswitch_e
    const/16 v0, 0xe

    const/4 v2, 0x1

    .line 1466
    invoke-virtual {v4, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 1467
    const-string v0, "TD_10"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_b7

    .line 1469
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x3

    .line 1470
    invoke-virtual {v5, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 1471
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-lez v2, :cond_b7

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 1472
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1475
    :cond_b7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1476
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1477
    :cond_b8
    const-string v0, "TD 16 should be given at or after 14 years of age or 3 years after the TD 10 dose, whichever is later."

    return-object v0

    :pswitch_f
    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 1457
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xd

    .line 1458
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x16c

    const/4 v1, 0x6

    .line 1459
    invoke-virtual {v6, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 1460
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1461
    :cond_b9
    const-string v0, "TD 10 should be given between 8 years and 14 years of age"

    return-object v0

    .line 757
    :pswitch_10
    const-string v0, "PCV_1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_ba

    .line 759
    const-string v0, "PCV-1 is not given yet"

    return-object v0

    .line 761
    :cond_ba
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 762
    const-string v0, "PCV-2 can not be given before PCV-1"

    return-object v0

    .line 764
    :cond_bb
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_bc

    .line 765
    const-string v0, "PCV-2 should be given at least 56 days after PCV-1"

    return-object v0

    :cond_bc
    const/16 v0, 0x62

    const/4 v1, 0x5

    .line 767
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    .line 768
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 769
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 770
    :cond_bd
    const-string v0, "PCV-2 must be given between 14 weeks and 1 year from the date of birth."

    return-object v0

    .line 606
    :pswitch_11
    const-string v0, "OPV_2"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_be

    .line 608
    const-string v0, "OPV-2 is not given yet"

    return-object v0

    .line 611
    :cond_be
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 612
    const-string v0, "OPV-3 can not be given before OPV-2"

    return-object v0

    .line 615
    :cond_bf
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_c0

    .line 616
    const-string v0, "OPV-3 should be given 28 days after OPV-2"

    return-object v0

    :cond_c0
    const/16 v0, 0x62

    const/4 v1, 0x5

    .line 619
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 620
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 621
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 622
    :cond_c1
    const-string v0, "OPV-3 should be given between 14 weeks and 5 years after birth."

    return-object v0

    .line 586
    :pswitch_12
    const-string v0, "OPV_1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_c2

    .line 588
    const-string v0, "OPV-1 is not given yet"

    return-object v0

    .line 591
    :cond_c2
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 592
    const-string v0, "OPV-2 can not be given before OPV-1"

    return-object v0

    .line 595
    :cond_c3
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_c4

    .line 596
    const-string v0, "OPV-2 vaccine should be given 28 days after OPV-1"

    return-object v0

    :cond_c4
    const/16 v0, 0x46

    const/4 v1, 0x5

    .line 599
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 600
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 601
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 602
    :cond_c5
    const-string v0, "OPV-2 vaccine should be given between 10 weeks and 5 years after birth."

    return-object v0

    :pswitch_13
    const/16 v0, 0x2a

    const/4 v1, 0x5

    .line 579
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 580
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 581
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_c6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 582
    :cond_c6
    const-string v0, "OPV-1 should be given between 6 weeks and 5 years after birth"

    return-object v0

    :pswitch_14
    const/16 v0, 0xf

    const/4 v1, 0x5

    .line 572
    invoke-virtual {v6, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 573
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_c7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 574
    :cond_c7
    const-string v0, "OPV-0 should be given within 15 days of birth"

    return-object v0

    :pswitch_15
    if-eqz v7, :cond_c8

    .line 891
    const-string v0, "DPT-3 cannot be given because Penta-1, Penta-2, or Penta-3 has already been given"

    return-object v0

    .line 894
    :cond_c8
    const-string v0, "DPT_2"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_c9

    .line 896
    const-string v0, "DPT-2 is not given yet"

    return-object v0

    .line 899
    :cond_c9
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 900
    const-string v0, "DPT-3 can not be given before DPT-2"

    return-object v0

    .line 903
    :cond_ca
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_cb

    .line 904
    const-string v0, "DPT-3 should be given after 28 days of DPT-2"

    return-object v0

    :cond_cb
    const/16 v0, 0xe

    .line 907
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x54

    .line 908
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 909
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_cc

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 910
    :cond_cc
    const-string v0, "DPT-3 should be given between 14 months and 7 years after birth"

    return-object v0

    :pswitch_16
    if-eqz v7, :cond_cd

    .line 866
    const-string v0, "DPT-2 cannot be given because Penta-1, Penta-2, or Penta-3 has already been given"

    return-object v0

    .line 869
    :cond_cd
    const-string v0, "DPT_1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_ce

    .line 871
    const-string v0, "DPT-1 is not given yet"

    return-object v0

    .line 874
    :cond_ce
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 875
    const-string v0, "DPT-2 can not be given before DPT-1"

    return-object v0

    .line 878
    :cond_cf
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_d0

    .line 879
    const-string v0, "DPT-2 should be given after 28 days of DPT-1"

    return-object v0

    :cond_d0
    const/16 v0, 0xd

    .line 882
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x54

    .line 883
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 884
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 885
    :cond_d1
    const-string v0, "DPT-2 should be given between 13 months and 7 years after birth."

    return-object v0

    :pswitch_17
    if-eqz v7, :cond_d2

    .line 855
    const-string v0, "DPT-1 cannot be given because Penta-1, Penta-2, or Penta-3 has already been given"

    return-object v0

    :cond_d2
    const/16 v0, 0xc

    .line 857
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x54

    .line 858
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 859
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_d3

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 860
    :cond_d3
    const-string v0, "DPT-1 should be given between 1 year and 7 years after birth"

    return-object v0

    .line 973
    :pswitch_18
    const-string v0, "MEASLES_RUBELLA_1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 974
    const-string v2, "MEASLES_1"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    if-nez v0, :cond_d4

    if-nez v1, :cond_d4

    .line 977
    const-string v0, "MEASLES-RUBELLA-1 or MEASLES-1 must be given before MEASLES-RUBELLA-2."

    return-object v0

    :cond_d4
    if-eqz v0, :cond_d5

    .line 980
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const/16 v5, 0x1c

    if-ge v2, v5, :cond_d6

    .line 981
    const-string v0, "MEASLES-RUBELLA-2 should be given at least 28 days after MEASLES-RUBELLA-1."

    return-object v0

    :cond_d5
    const/16 v5, 0x1c

    :cond_d6
    if-eqz v1, :cond_d7

    .line 984
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    if-ge v0, v5, :cond_d7

    .line 985
    const-string v0, "MEASLES-RUBELLA-2 should be given at least 28 days after MEASLES-1."

    return-object v0

    :cond_d7
    const/16 v0, 0x10

    .line 988
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 989
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 990
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_d8

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 991
    :cond_d8
    const-string v0, "MEASLES-RUBELLA-2 should be given between 16 months and 5 years of birth."

    return-object v0

    :pswitch_19
    const/16 v1, 0x9

    .line 965
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->add(II)V

    .line 966
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 967
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_d9

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 968
    :cond_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " should be given between 9 months and 5 years of birth"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a
    if-eqz v18, :cond_da

    .line 830
    const-string v0, "Penta-3 cannot be given because DPT 1, DPT 2, or DPT 3 has already been given"

    return-object v0

    .line 833
    :cond_da
    const-string v0, "PENTA_2"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_db

    .line 835
    const-string v0, "Penta-2 is not given yet"

    return-object v0

    .line 838
    :cond_db
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 839
    const-string v0, "Penta-3 can not be given before Penta 2 given date"

    return-object v0

    .line 842
    :cond_dc
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_dd

    .line 843
    const-string v0, "Penta-3 should be given after 28 days of Penta 2"

    return-object v0

    :cond_dd
    const/16 v0, 0x62

    const/4 v1, 0x5

    .line 846
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 847
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 848
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_de

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 849
    :cond_de
    const-string v0, "Penta-3 should be given between 14 weeks and 5 years of birth"

    return-object v0

    :pswitch_1b
    if-eqz v18, :cond_df

    .line 805
    const-string v0, "Penta-2 cannot be given because DPT 1, DPT 2, or DPT 3 has already been given"

    return-object v0

    .line 808
    :cond_df
    const-string v0, "PENTA_1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_e0

    .line 810
    const-string v0, "Penta-1 is not given yet"

    return-object v0

    .line 813
    :cond_e0
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 814
    const-string v0, "Penta-2 can not be given before Penta-1 vaccine"

    return-object v0

    .line 817
    :cond_e1
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_e2

    .line 818
    const-string v0, "Penta-2 should be given after 28 days of Penta-1"

    return-object v0

    :cond_e2
    const/16 v0, 0x46

    const/4 v1, 0x5

    .line 821
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 822
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 823
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 824
    :cond_e3
    const-string v0, "Penta-2 should be given between 10 weeks and 5 years after birth"

    return-object v0

    :pswitch_1c
    if-eqz v18, :cond_e4

    .line 794
    const-string v0, "Penta-1 cannot be given because DPT 1, DPT 2, or DPT 3 has already been given"

    return-object v0

    :cond_e4
    const/16 v0, 0x2a

    const/4 v1, 0x5

    .line 796
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    .line 797
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 798
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_e5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 799
    :cond_e5
    const-string v0, "Penta-1 should be given between 6 weeks and 1 year after birth"

    return-object v0

    .line 775
    :pswitch_1d
    const-string v0, "PCV_2"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_e6

    .line 777
    const-string v0, "PCV-2 has not been given yet."

    return-object v0

    :cond_e6
    move-object/from16 v1, v17

    .line 779
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_e7

    .line 780
    const-string v0, "PCV booster should be given within 9 months of birth"

    return-object v0

    .line 782
    :cond_e7
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e8

    .line 783
    const-string v0, "PCV booster should be given at least 8 weeks after PCV-2"

    return-object v0

    .line 785
    :cond_e8
    invoke-virtual {v4, v9, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    .line 786
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 787
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_e9

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 788
    :cond_e9
    const-string v0, "PCV booster must be given between 9 months and 1 year after birth."

    return-object v0

    :pswitch_1e
    const/4 v0, 0x1

    .line 565
    invoke-virtual {v6, v0, v0}, Ljava/util/Calendar;->add(II)V

    .line 566
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_ea

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 567
    :cond_ea
    const-string v0, "BCG should be given within 1 year of birth"

    return-object v0

    :pswitch_1f
    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 558
    invoke-virtual {v6, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 559
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_eb

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 560
    :cond_eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " should be given within 1 day of birth"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :pswitch_20
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_ec

    .line 629
    const-string v0, " OPV-3 is not given yet"

    return-object v0

    .line 632
    :cond_ec
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_f8

    .line 633
    const-string v0, "OPV Booster should be given at least 6 months after OPV-3"

    return-object v0

    .line 713
    :pswitch_21
    const-string v0, "F_IPV_1_01"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    const-string v0, "F_IPV_2_01"

    .line 714
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    goto :goto_6

    .line 718
    :cond_ed
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_ee

    .line 720
    const-string v0, "F-IPV-2-05 cannot be given because OPV-3 is not given yet"

    return-object v0

    .line 723
    :cond_ee
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 724
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 725
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_f1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_ef

    goto :goto_5

    :cond_ef
    const/16 v0, 0x62

    const/4 v1, 0x5

    .line 730
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    .line 731
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 732
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_f0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 733
    :cond_f0
    const-string v0, "F-IPV-2-05 must be given between 14 weeks and 12 months from the date of birth"

    return-object v0

    .line 727
    :cond_f1
    :goto_5
    const-string v0, "F-IPV-2-05 must be given on the same date as OPV-3"

    return-object v0

    .line 715
    :cond_f2
    :goto_6
    const-string v0, "F-IPV-2-05 cannot be given because F-IPV-1-01 or F-IPV-2-01 has already been given"

    return-object v0

    .line 688
    :pswitch_22
    const-string v0, "F_IPV_1_01"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 689
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    if-nez v1, :cond_f3

    .line 691
    const-string v0, "OPV-3 is not given yet"

    return-object v0

    :cond_f3
    if-nez v0, :cond_f4

    .line 695
    const-string v0, "F-IPV-1-01 is not given yet"

    return-object v0

    .line 698
    :cond_f4
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 699
    const-string v0, "F-IPV-2-01 can not be given before F-IPV-1-01 "

    return-object v0

    .line 702
    :cond_f5
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_f6

    .line 703
    const-string v0, "F-IPV-2-01 should be given after 28 days of F-IPV-1-01 given date"

    return-object v0

    :cond_f6
    const/16 v0, 0x62

    const/4 v1, 0x5

    .line 706
    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    .line 707
    invoke-virtual {v6, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 708
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 709
    :cond_f7
    const-string v0, "F-IPV-2-01 should be given between 14 weeks and 1 year after birth"

    return-object v0

    :pswitch_23
    const/16 v1, 0x2a

    const/4 v2, 0x5

    .line 639
    invoke-virtual {v4, v2, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xc

    .line 640
    invoke-virtual {v6, v9, v1}, Ljava/util/Calendar;->add(II)V

    .line 641
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_f8

    goto :goto_8

    :cond_f8
    :goto_7
    const/4 v0, 0x0

    return-object v0

    .line 642
    :cond_f9
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " should be given between 6 weeks and 1 year after birth"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f4a6128 -> :sswitch_27
        -0x6f49ecc9 -> :sswitch_26
        -0x6f49ecc5 -> :sswitch_25
        -0x2c422c3a -> :sswitch_24
        -0x27a1c3d1 -> :sswitch_23
        0x10026 -> :sswitch_22
        0xe7c7f4 -> :sswitch_21
        0x2233f58 -> :sswitch_20
        0x2233f59 -> :sswitch_1f
        0x2233f5a -> :sswitch_1e
        0x351009e -> :sswitch_1d
        0x351009f -> :sswitch_1c
        0x3e3e2fa -> :sswitch_1b
        0x3e3e2fb -> :sswitch_1a
        0x3e3e2fc -> :sswitch_19
        0x47eed06 -> :sswitch_18
        0x47eed07 -> :sswitch_17
        0x47eed08 -> :sswitch_16
        0x47eed09 -> :sswitch_15
        0x4871bb5 -> :sswitch_14
        0x4871bb6 -> :sswitch_13
        0x4c00a4e -> :sswitch_12
        0x4c00a54 -> :sswitch_11
        0xa18317a -> :sswitch_10
        0xa18317b -> :sswitch_f
        0xa18317c -> :sswitch_e
        0x1d3af6ca -> :sswitch_d
        0x1eaf0fc6 -> :sswitch_c
        0x1eaf0fc7 -> :sswitch_b
        0x1eaf0fc8 -> :sswitch_a
        0x1eaf0fc9 -> :sswitch_9
        0x1eaf0fca -> :sswitch_8
        0x1eaf0fcb -> :sswitch_7
        0x1eaf0fcc -> :sswitch_6
        0x1eaf0fcd -> :sswitch_5
        0x1eaf0fce -> :sswitch_4
        0x3d08f914 -> :sswitch_3
        0x3d08f91e -> :sswitch_2
        0x45614779 -> :sswitch_1
        0x722d58ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_23
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_23
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_19
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
