.class public Lcom/argusoft/sewa/android/app/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field public static final VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$"

    const/4 v1, 0x2

    .line 16
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/util/CommonUtil;->VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAlphanumericInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 48
    new-instance v0, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static getAlphanumericWithSpaceInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 64
    new-instance v0, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda5;-><init>()V

    return-object v0
.end method

.method public static getEmailIdInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 116
    new-instance v0, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public static getFamilyIdInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 99
    new-instance v0, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method

.method public static getGenderValueFromAnswer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "T"

    const-string v2, "M"

    const-string v3, "F"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Female"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "FEMALE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "TRANSGENDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "Male"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    goto :goto_0

    :sswitch_4
    const-string v0, "MALE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "Transgender"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const-string v1, ""

    goto :goto_1

    :pswitch_0
    move-object v1, v3

    goto :goto_1

    :pswitch_1
    move-object v1, v2

    :goto_1
    :pswitch_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x129f10b7 -> :sswitch_b
        0x31 -> :sswitch_a
        0x32 -> :sswitch_9
        0x33 -> :sswitch_8
        0x46 -> :sswitch_7
        0x4d -> :sswitch_6
        0x54 -> :sswitch_5
        0x23fe0d -> :sswitch_4
        0x247a2d -> :sswitch_3
        0xa4adb49 -> :sswitch_2
        0x7b638f4c -> :sswitch_1
        0x7d35876c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLengthInputFilter(I)Landroid/text/InputFilter;
    .locals 1

    .line 27
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-object v0
.end method

.method public static getMemberIdInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 82
    new-instance v0, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static getOnlyNumberInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 31
    new-instance v0, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/CommonUtil$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .locals 1

    .line 23
    sget-object v0, Lcom/argusoft/sewa/android/app/util/CommonUtil;->VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAlphanumericInputFilter$1(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_1

    .line 51
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 52
    invoke-static {p5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p2, p1

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static synthetic lambda$getAlphanumericWithSpaceInputFilter$2(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_1

    .line 67
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 70
    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\p{L}\\p{M}\\p{N}\\s]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p2, p1

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static synthetic lambda$getEmailIdInputFilter$5(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_2

    .line 121
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 122
    invoke-static {p5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@!#$%&\'*+-/=?^_`{|}~."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p2, p1

    if-ne p0, p2, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static synthetic lambda$getFamilyIdInputFilter$4(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 100
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_1

    .line 103
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 104
    invoke-static {p5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMNfmn/1234567890"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p2, p1

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static synthetic lambda$getMemberIdInputFilter$3(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_1

    .line 86
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 87
    invoke-static {p5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANan1234567890"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p2, p1

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static synthetic lambda$getOnlyNumberInputFilter$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_1

    .line 35
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 36
    invoke-static {p5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1234567890"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p2, p1

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static returnTrueFalseFromInitials(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "False"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "FALSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "True"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "TRUE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    .line 174
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    .line 167
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_9
        0x32 -> :sswitch_8
        0x46 -> :sswitch_7
        0x54 -> :sswitch_6
        0x276d8e -> :sswitch_5
        0x27e9ae -> :sswitch_4
        0x36758e -> :sswitch_3
        0x3f92103 -> :sswitch_2
        0x4082903 -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
