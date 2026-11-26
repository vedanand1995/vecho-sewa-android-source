.class public Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;
.super Ljava/lang/Object;
.source "IdentityCardUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateAadharNumber(Ljava/lang/String;)Z
    .locals 16

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "^[0-9]{12}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xa

    .line 51
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v4, v1, [I

    fill-array-data v4, :array_1

    new-array v5, v1, [I

    fill-array-data v5, :array_2

    new-array v6, v1, [I

    fill-array-data v6, :array_3

    new-array v7, v1, [I

    fill-array-data v7, :array_4

    new-array v8, v1, [I

    fill-array-data v8, :array_5

    new-array v9, v1, [I

    fill-array-data v9, :array_6

    new-array v10, v1, [I

    fill-array-data v10, :array_7

    new-array v11, v1, [I

    fill-array-data v11, :array_8

    new-array v12, v1, [I

    fill-array-data v12, :array_9

    new-array v13, v1, [[I

    aput-object v3, v13, v2

    const/4 v3, 0x1

    aput-object v4, v13, v3

    const/4 v4, 0x2

    aput-object v5, v13, v4

    const/4 v5, 0x3

    aput-object v6, v13, v5

    const/4 v6, 0x4

    aput-object v7, v13, v6

    const/4 v7, 0x5

    aput-object v8, v13, v7

    const/4 v8, 0x6

    aput-object v9, v13, v8

    const/4 v9, 0x7

    aput-object v10, v13, v9

    const/16 v10, 0x8

    aput-object v11, v13, v10

    const/16 v11, 0x9

    aput-object v12, v13, v11

    .line 64
    new-array v11, v1, [I

    fill-array-data v11, :array_a

    new-array v12, v1, [I

    fill-array-data v12, :array_b

    new-array v14, v1, [I

    fill-array-data v14, :array_c

    new-array v15, v1, [I

    fill-array-data v15, :array_d

    new-array v9, v1, [I

    fill-array-data v9, :array_e

    new-array v8, v1, [I

    fill-array-data v8, :array_f

    new-array v7, v1, [I

    fill-array-data v7, :array_10

    new-array v1, v1, [I

    fill-array-data v1, :array_11

    new-array v10, v10, [[I

    aput-object v11, v10, v2

    aput-object v12, v10, v3

    aput-object v14, v10, v4

    aput-object v15, v10, v5

    aput-object v9, v10, v6

    const/4 v4, 0x5

    aput-object v8, v10, v4

    const/4 v4, 0x6

    aput-object v7, v10, v4

    const/4 v4, 0x7

    aput-object v1, v10, v4

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 78
    aget-object v5, v13, v5

    rem-int/lit8 v6, v4, 0x8

    aget-object v6, v10, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v8, v1, v4

    sub-int/2addr v8, v3

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget v6, v6, v7

    aget v5, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

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

.method private static validateDrivingLicense(Ljava/lang/String;)Z
    .locals 1

    .line 124
    const-string v0, "[A-Z]{2}[0-9]{13}"

    .line 125
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static validateIdNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "PASSPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "AADHAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "PAN_CARD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "RATION_CARD_WITH_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "NPR_SCARD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "UNIQUE_DISABILITY_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "PENSION_PASSBOOK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "STUDENT_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "VOTER_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "DRIVING_LICENSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    .line 38
    :pswitch_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validatePassportNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 20
    :pswitch_1
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateAadharNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 36
    :pswitch_2
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validatePanNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 30
    :pswitch_3
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateRationNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 24
    :pswitch_4
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateNprCardNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 28
    :pswitch_5
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateUniqueDisabilityId(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 22
    :pswitch_6
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validatePensionPassbookNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 32
    :pswitch_7
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateStudentId(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 26
    :pswitch_8
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateVoterIdNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 34
    :pswitch_9
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/IdentityCardUtil;->validateDrivingLicense(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bc4d877 -> :sswitch_9
        -0x340485ee -> :sswitch_8
        -0x209f1a41 -> :sswitch_7
        -0x15116395 -> :sswitch_6
        -0x3504090 -> :sswitch_5
        0x3bc447b4 -> :sswitch_4
        0x5bc9936c -> :sswitch_3
        0x6f473d92 -> :sswitch_2
        0x729ef7d5 -> :sswitch_1
        0x772c7c12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static validateNprCardNumber(Ljava/lang/String;)Z
    .locals 1

    .line 92
    const-string v0, "\\d{12}"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static validatePanNumber(Ljava/lang/String;)Z
    .locals 1

    .line 131
    const-string v0, "[A-Z]{5}[0-9]{4}[A-Z]{1}"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static validatePassportNumber(Ljava/lang/String;)Z
    .locals 1

    .line 138
    const-string v0, "[A-Z]{1}[0-9]{7}"

    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static validatePensionPassbookNumber(Ljava/lang/String;)Z
    .locals 1

    .line 85
    const-string v0, "[A-Z]{3}\\d{7}"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static validateRationNumber(Ljava/lang/String;)Z
    .locals 1

    .line 113
    const-string v0, "[0-9]{15}"

    .line 114
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static validateStudentId(Ljava/lang/String;)Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validateUniqueDisabilityId(Ljava/lang/String;)Z
    .locals 1

    .line 106
    const-string v0, "[A-Z]{3}\\d{9}"

    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static validateVoterIdNumber(Ljava/lang/String;)Z
    .locals 1

    .line 99
    const-string v0, "[A-Z]{3}[0-9]{7}"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
