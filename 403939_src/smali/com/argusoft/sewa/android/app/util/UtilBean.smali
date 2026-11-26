.class public Lcom/argusoft/sewa/android/app/util/UtilBean;
.super Ljava/lang/Object;
.source "UtilBean.java"


# static fields
.field public static final DAY_LONG_VALUE:J = 0x5265c00L

.field public static final HOUR_LONG_VALUE:J = 0x36ee80L

.field public static final JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_DATE_SERIALIZER:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINUTE_LONG_VALUE:J = 0xea60L

.field public static final VACCINATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VACCINATION_SORT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIT_DURATION_MAP_FOR_AMRUTPAN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final YEAR_LONG_VALUE:J = 0x757b12c00L

.field public static dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private static dosageHashTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static entityFullFormNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static malnutritionGradeMapBoy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static malnutritionGradeMapGirl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_SERIALIZER:Lcom/google/gson/JsonSerializer;

    .line 117
    new-instance v0, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_SORT_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HEPATITIS_B_0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_K"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BCG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPV_0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPV_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ROTA_VIRUS_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PENTA_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPT_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F_IPV_1_01"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPV_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ROTA_VIRUS_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PENTA_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPT_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPV_3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ROTA_VIRUS_3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PENTA_3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPT_3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F_IPV_2_01"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F_IPV_2_05"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEASLES_RUBELLA_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEASLES_RUBELLA_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPV_BOOSTER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPT_BOOSTER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPT_BOOSTER_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x19

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1a

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1b

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VITAMIN_A_9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TD_10"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x23

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TD_16"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_COMPARATOR:Ljava/util/Comparator;

    .line 2337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->VISIT_DURATION_MAP_FOR_AMRUTPAN:Ljava/util/Map;

    .line 2340
    const-string v1, "1"

    const-string v2, "3 days"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    const-string v1, "2"

    const-string v2, "7 days"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    const-string v1, "3"

    const-string v2, "14 days"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    const-string v1, "4"

    const-string v2, "1.5 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    const-string v1, "5"

    const-string v2, "3.5 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    const-string v1, "6"

    const-string v2, "5 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    const-string v1, "7"

    const-string v2, "6 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    const-string v1, "8"

    const-string v2, "6.5 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    const-string v1, "9"

    const-string v2, "7.5 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    const-string v1, "10"

    const-string v2, "9 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    const-string v1, "11"

    const-string v2, "12 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    const-string v1, "12"

    const-string v2, "15 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    const-string v1, "13"

    const-string v2, "18 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    const-string v1, "14"

    const-string v2, "24 months"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addBullet(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    .line 1793
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1794
    new-instance v1, Landroid/text/style/BulletSpan;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static addCommaSeparatedStringIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 1998
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2000
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 2003
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static addLBWorAsphyxiaIntoLICForFirstPNC(Ljava/lang/String;)V
    .locals 10

    .line 442
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "isChildsFirstPNCDone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 443
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 446
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "childLastWeight"

    const-string v2, "whenDidBabyCry"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 447
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v3, v0

    .line 451
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 453
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 456
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_2
    :goto_0
    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 459
    const-string v6, "CRYAE"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v7, v4

    if-ltz v9, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    cmpg-double v9, v7, v1

    if-ltz v9, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    .line 460
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    if-eqz v3, :cond_5

    .line 461
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v7, v4

    if-ltz v9, :cond_5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v7, v4, v1

    if-gez v7, :cond_5

    .line 462
    const-string v1, "Birth weight:"

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 464
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "When did the baby cry?"

    invoke-static {v1, v0, p0}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static addYearsMonthsDays(JIII)J
    .locals 4

    .line 1193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    .line 1195
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1197
    :cond_0
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    if-eqz p4, :cond_1

    const/4 p0, 0x5

    .line 1199
    invoke-virtual {v0, p0, p4}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p0, 0x2

    .line 1202
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->add(II)V

    :cond_2
    if-eqz p2, :cond_3

    const/4 p0, 0x1

    .line 1205
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    .line 1207
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static allowedLocTypesToAddFamily()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2291
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "AA"

    const-string v2, "UAA"

    const-string v3, "A"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static arrayJoinToString([JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_2

    .line 832
    array-length v0, p0

    if-lez v0, :cond_2

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-wide v5, p0, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 839
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :goto_1
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static arrayJoinToString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    .line 815
    array-length v0, p0

    if-lez v0, :cond_2

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p0, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 822
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 826
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static calculateAgeYearMonthDay(J)[I
    .locals 2

    .line 1318
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 1319
    new-instance p0, Lorg/joda/time/LocalDate;

    invoke-direct {p0}, Lorg/joda/time/LocalDate;-><init>()V

    .line 1321
    new-instance p1, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    .line 1322
    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result p0

    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result p1

    filled-new-array {p0, v0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static calculateAgeYearMonthDayOnGivenDate(Ljava/lang/Long;Ljava/lang/Long;)[I
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1327
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1328
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;)V

    .line 1329
    new-instance p0, Lorg/joda/time/LocalDate;

    invoke-direct {p0, p1}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;)V

    .line 1331
    new-instance p1, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    .line 1332
    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result p0

    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result p1

    filled-new-array {p0, v0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1334
    filled-new-array {p0, p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static calculateBmi(Ljava/lang/Integer;Ljava/lang/Float;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1782
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1783
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 1785
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p1, p0

    div-float/2addr p1, p0

    .line 1787
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.1f"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static calculateDateMinus(JIII)J
    .locals 0

    mul-int/lit8 p2, p2, -0x1

    mul-int/lit8 p3, p3, -0x1

    mul-int/lit8 p4, p4, -0x1

    .line 1189
    invoke-static {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addYearsMonthsDays(JIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateDatePlus(JIII)J
    .locals 0

    .line 1185
    invoke-static {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->addYearsMonthsDays(JIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateDaysBetweenDates(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2

    .line 720
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    .line 721
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 2181
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2182
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 2186
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 2187
    div-int/lit8 p0, p0, 0x2

    .line 2189
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p2, :cond_1

    div-int v2, p0, v1

    if-lt v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I
    .locals 3

    .line 704
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 705
    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, p1

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :goto_0
    const/4 p1, 0x0

    .line 712
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 713
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    return p1
.end method

.method public static calculateYearsBetweenDates(JJ)F
    .locals 0

    sub-long/2addr p0, p2

    long-to-float p0, p0

    const p1, 0x50eaf626

    div-float/2addr p0, p1

    return p0
.end method

.method public static checkWeightForPNCMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 369
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "T"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 370
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    return-object p1

    .line 374
    :cond_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "isChildsFirstPNCDone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 375
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 378
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "childLastWeight"

    const-string v3, "whenDidBabyCry"

    if-nez v1, :cond_2

    .line 379
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 381
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 383
    :goto_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 385
    :cond_2
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 388
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :cond_3
    move-object v2, v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 391
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    cmpg-double v1, v3, v5

    if-ltz v1, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    const-string v1, "CRYAE"

    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return-object v0

    .line 396
    :cond_6
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isEmptyMapAllMorbidities(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 397
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->pncWeightCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 1065
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 1066
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 1067
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 1068
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public static clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    if-eqz p0, :cond_0

    .line 1074
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1075
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xe

    const/4 v1, 0x0

    .line 1076
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 1077
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1078
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 1079
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1081
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertDateToString(JZZZ)Ljava/lang/String;
    .locals 16

    .line 1230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-wide/from16 v1, p0

    .line 1231
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    .line 1232
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1233
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1236
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1237
    const-string v2, "/"

    const-string v6, " "

    if-eqz p3, :cond_1

    .line 1238
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1240
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v7, 0x2

    .line 1243
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 1244
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v5, :cond_2

    .line 1245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1247
    :cond_2
    const-string v9, "12"

    const/16 v10, 0xa

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/16 v13, 0x9

    if-eqz p3, :cond_f

    .line 1248
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, -0x1

    sparse-switch v14, :sswitch_data_0

    :goto_1
    const/4 v1, -0x1

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "11"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "10"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "09"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_4
    const-string v1, "08"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_5
    const-string v1, "07"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_6
    const-string v7, "06"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_1

    :sswitch_7
    const-string v1, "05"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_8
    const-string v1, "04"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_9
    const-string v1, "03"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_a
    const-string v1, "02"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_b
    const-string v1, "01"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1284
    :pswitch_0
    const-string v8, "December"

    goto :goto_3

    .line 1281
    :pswitch_1
    const-string v8, "November"

    goto :goto_3

    .line 1278
    :pswitch_2
    const-string v8, "October"

    goto :goto_3

    .line 1275
    :pswitch_3
    const-string v8, "September"

    goto :goto_3

    .line 1272
    :pswitch_4
    const-string v8, "August"

    goto :goto_3

    .line 1269
    :pswitch_5
    const-string v8, "July"

    goto :goto_3

    .line 1266
    :pswitch_6
    const-string v8, "June"

    goto :goto_3

    .line 1263
    :pswitch_7
    const-string v8, "May"

    goto :goto_3

    .line 1260
    :pswitch_8
    const-string v8, "April"

    goto :goto_3

    .line 1257
    :pswitch_9
    const-string v8, "March"

    goto :goto_3

    .line 1254
    :pswitch_a
    const-string v8, "February"

    goto :goto_3

    .line 1251
    :pswitch_b
    const-string v8, "January"

    :cond_f
    :goto_3
    if-eqz p3, :cond_10

    .line 1289
    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1292
    :cond_10
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz p4, :cond_11

    .line 1296
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz p2, :cond_16

    const/16 v1, 0xc

    .line 1299
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_12

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    :cond_12
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_14

    .line 1306
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v5, :cond_13

    goto :goto_5

    .line 1309
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_14
    move-object v9, v2

    .line 1312
    :goto_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "AM"

    goto :goto_6

    :cond_15
    const-string v0, "PM"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :cond_16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_b
        0x602 -> :sswitch_a
        0x603 -> :sswitch_9
        0x604 -> :sswitch_8
        0x605 -> :sswitch_7
        0x606 -> :sswitch_6
        0x607 -> :sswitch_5
        0x608 -> :sswitch_4
        0x609 -> :sswitch_3
        0x61f -> :sswitch_2
        0x620 -> :sswitch_1
        0x621 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static createAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-direct {v0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 607
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3

    .line 1442
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not deleted"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UtilBean"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static endOfDay(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .line 2046
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2047
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    const/16 v1, 0x17

    .line 2048
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    const/16 v1, 0x3b

    .line 2049
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 2050
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 v1, 0x3e7

    .line 2051
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2053
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static extractHighRiskFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)[Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 2198
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p0

    .line 2200
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 2201
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2202
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2203
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    const-string v2, "identifyhighrisk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fahrenheitToCelsius(F)F
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static findMalnutritionGrade(Ljava/lang/String;IF)Ljava/lang/String;
    .locals 4

    .line 342
    const-string v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7e

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, "Male"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMalnutritionGradeMapForGIRLS()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 352
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 353
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 p1, p1, 0x1

    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 343
    :cond_2
    :goto_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMalnutritionGradeMapForBOYS()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 345
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 346
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 p1, p1, 0x1

    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_1
    cmpl-float p1, p2, v3

    if-ltz p1, :cond_4

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_3

    .line 359
    const-string p0, "Moderately malnourished"

    goto :goto_2

    .line 361
    :cond_3
    const-string p0, "Well-nourished"

    goto :goto_2

    .line 357
    :cond_4
    const-string p0, "Severely malnourished"

    :goto_2
    return-object p0
.end method

.method public static formatAmrutpanNotificationOtherDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 2362
    const-string v0, "service_date"

    const-string v1, "visit_days"

    const/4 v2, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    .line 2367
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 2369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2371
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2372
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2373
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2374
    const-string v7, "<font color=\'#000000\'><b>Visit Done At: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2375
    const-string v7, "N/A"

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move-object v6, v7

    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</b></font><br/>"

    .line 2376
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 2380
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "<br/>"

    if-eqz v8, :cond_d

    .line 2381
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2383
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    .line 2387
    :cond_4
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 2388
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    .line 2390
    :cond_5
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    :goto_2
    move-object v10, v7

    .line 2392
    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v12, "weight_of_child"

    const-string v13, "length_of_child"

    if-nez v11, :cond_8

    .line 2393
    :try_start_3
    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 2394
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    .line 2400
    :cond_7
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->formatKeyToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    .line 2401
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2396
    :cond_8
    :goto_4
    const-string v11, "<font color=\'#303F9F\'>"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->formatKeyToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":</font> "

    .line 2398
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    :goto_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2405
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->formatDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 2407
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "d MMMM yyyy"

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2408
    invoke-virtual {v10, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 2407
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2411
    :cond_9
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2414
    :cond_a
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 2417
    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2418
    const-string v8, " cm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2419
    :cond_b
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2420
    const-string v8, " grams"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    :cond_c
    :goto_6
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2427
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2428
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<font color=\'#DDDDDD\'>\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500</font>"

    .line 2429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<br/><br/>"

    .line 2430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2434
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2437
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_7
    return-object v2
.end method

.method public static formatKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2316
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2318
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 2319
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2320
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 2321
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2324
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatKeyToTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_3

    .line 2443
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2446
    :cond_0
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2449
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 2450
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2451
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 2452
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 2453
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2456
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2444
    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static getAadharTextToBeDisplayedAfterScan(Ljava/util/Map;)Landroid/text/Spannable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1631
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "yob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "dob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "pc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    const-string v2, "\n"

    const-string v3, " : "

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1639
    :pswitch_0
    const-string v4, "Name"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1645
    :pswitch_1
    const-string v4, "Year Of Birth"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1633
    :pswitch_2
    const-string v4, "Aadhar Number"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1657
    :pswitch_3
    const-string v4, "Date Of Birth"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1651
    :pswitch_4
    const-string v4, "Pincode"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1666
    :cond_5
    new-instance p0, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xdf3 -> :sswitch_4
        0x18537 -> :sswitch_3
        0x1c450 -> :sswitch_2
        0x1d40c -> :sswitch_1
        0x337a8b -> :sswitch_0
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

.method public static getAgeDisplay(III)Ljava/lang/String;
    .locals 6

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    const-string v1, "Year"

    const-string v2, " "

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 1340
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :cond_0
    const-string v4, "s "

    if-le p0, v3, :cond_1

    .line 1343
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_1
    const-string v1, "Month"

    if-ne p1, v3, :cond_2

    .line 1346
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-le p1, v3, :cond_3

    .line 1349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :cond_3
    const-string v1, "Day"

    if-ne p2, v3, :cond_4

    .line 1352
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-le p2, v3, :cond_5

    .line 1355
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-nez p2, :cond_6

    if-nez p1, :cond_6

    if-nez p0, :cond_6

    .line 1358
    const-string p0, "Born today"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_7

    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 1367
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_7

    .line 1368
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;)V

    .line 1369
    new-instance p0, Lorg/joda/time/LocalDate;

    invoke-direct {p0, p1}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;)V

    .line 1371
    new-instance p1, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    .line 1373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    const-string v1, "Year"

    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v2, :cond_0

    .line 1375
    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    const-string v4, "s "

    if-le v0, v2, :cond_1

    .line 1378
    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    :cond_1
    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    const-string v1, "Month"

    if-ne v0, v2, :cond_2

    .line 1381
    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_2
    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 1384
    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result v0

    const-string v1, "Day"

    if-ne v0, v2, :cond_4

    .line 1387
    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_4
    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1390
    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_5
    invoke-virtual {p1}, Lorg/joda/time/Period;->getDays()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/joda/time/Period;->getYears()I

    move-result p1

    if-nez p1, :cond_6

    .line 1393
    const-string p1, "Born today"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 1396
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBlockedMobileNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    const-string v1, "9999999999"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    const-string v1, "8888888888"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1863
    const-string v1, "7777777777"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1864
    const-string v1, "6666666666"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1865
    const-string v1, "5555555555"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    if-eqz p0, :cond_2

    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 502
    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChloroquineTabletDosage(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 691
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Chlorquine_0-1_Y"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 693
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Chlorquine_0>1sewa_Y"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getDataMapValues(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 612
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 613
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0, p0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getFieldValueMobDataBeanByDataMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0

    .line 619
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getDateAfterNoOfDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .line 1450
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 1452
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    .line 1453
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1455
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDayNameFromNumber(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2309
    :pswitch_0
    const-string p0, "SATURDAY"

    return-object p0

    .line 2307
    :pswitch_1
    const-string p0, "FRIDAY"

    return-object p0

    .line 2305
    :pswitch_2
    const-string p0, "THURSDAY"

    return-object p0

    .line 2303
    :pswitch_3
    const-string p0, "WEDNESDAY"

    return-object p0

    .line 2301
    :pswitch_4
    const-string p0, "TUESDAY"

    return-object p0

    .line 2299
    :pswitch_5
    const-string p0, "MONDAY"

    return-object p0

    .line 2297
    :pswitch_6
    const-string p0, "SUNDAY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDifferenceBetweenTwoDates(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1957
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1958
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDateTime;-><init>(Ljava/lang/Object;)V

    .line 1959
    new-instance p0, Lorg/joda/time/LocalDateTime;

    invoke-direct {p0, p1}, Lorg/joda/time/LocalDateTime;-><init>(Ljava/lang/Object;)V

    .line 1961
    new-instance p1, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDayTime()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    .line 1962
    invoke-static {}, Lorg/joda/time/format/PeriodFormat;->getDefault()Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    .line 1964
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDosageForDiarrhoeaWithDehydration(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    .line 659
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Diarrhoea_WD_<4_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-le p0, v0, :cond_1

    const/16 v1, 0x18

    if-gt p0, v1, :cond_1

    .line 661
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Diarrhoea_WD_>12_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-gt p0, v0, :cond_2

    .line 663
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Diarrhoea_WD_4-12_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getDosageForDiarrhoeaWithoutDehydration(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 671
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Diarrhoea_WOD_<2_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-gt p0, v0, :cond_1

    .line 673
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Diarrhoea_WOD_>2M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDosageHashTable()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    .line 633
    const-string v1, "Diarrhoea_WD_<4_M"

    const-string v2, "200 - 400 ml (2 cups)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Diarrhoea_WD_4-12_M"

    const-string v2, "400 - 700 ml (3 cups)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Diarrhoea_WD_>12_M"

    const-string v2, "700 - 900 ml (5 cups)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Diarrhoea_WOD_<2_M"

    const-string v2, "5 teaspoon of ORS for every episode of diarrohea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Diarrhoea_WOD_>2M"

    const-string v2, "200 ml of ORS for every episode of diarrohea (1/2 cup)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Chlorquine_0-1_Y"

    const-string v2, "1/2 tablet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Chlorquine_0>1sewa_Y"

    const-string v2, "1 tablet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "PCM_>2_M"

    const-string v2, "1/4 tablet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Vitamin_A_6-12_M"

    const-string v2, "Vitamin A 1  lac IU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Vitamin_A_>12_M"

    const-string v2, "Vitamin A 2 lac IU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    const-string v1, "Iron_Folic_>6_M"

    const-string v2, "1 tablet daily for 14 days daily"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dosageHashTable:Ljava/util/Map;

    return-object v0
.end method

.method public static getDpsAccordingScreenHeight(Landroid/content/Context;I)I
    .locals 4

    if-eqz p0, :cond_0

    .line 1404
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, p0

    int-to-double p0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v2

    mul-double v0, v0, p0

    double-to-int p0, v0

    return p0

    :cond_0
    return p1
.end method

.method public static getDpsAccordingScreenWidthHeight(Landroid/content/Context;F)I
    .locals 1

    if-eqz p0, :cond_0

    .line 1411
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    mul-float v0, v0, p1

    float-to-int p0, v0

    return p0

    :cond_0
    float-to-int p0, p1

    return p0
.end method

.method public static getDurationLabel(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2328
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2329
    const-string v0, "Y"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "D"

    const-string v2, "M"

    if-eqz v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    const-string p0, "Year/month/day not yet entered"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2331
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2332
    const-string p0, "Month/day not yet entered"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2334
    :cond_1
    const-string p0, "Year/month not yet entered"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;
    .locals 2

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1759
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1772
    :cond_0
    const-string p0, "Not available"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1760
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1761
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1763
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1767
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1768
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFatherName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 2244
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFatherName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFatherName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2245
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFatherName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2246
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2248
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2249
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHusbandId()Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p0

    .line 2250
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2254
    :cond_1
    const-string p0, "Not available"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFinancialYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1970
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 1973
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 p0, 0x2

    .line 1976
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 1977
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormattedTime(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1882
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1884
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullFormOfEntity()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 849
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    .line 851
    const-string v1, "ANCMORB"

    const-string v2, "ANC Morbidity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "CCMORB"

    const-string v2, "Child Care Morbidity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "PNCMORB"

    const-string v2, "PNC Morbidity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHS"

    const-string v2, "Family Health Survey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "CFHC"

    const-string v2, "Comprehensive Family Health Census"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AADHAR_UPDATION"

    const-string v2, "Aadhar Updation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AADHAR_PHONE_UPDATION"

    const-string v2, "Aadhar and Phone Updation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "PHONE_UPDATION"

    const-string v2, "Phone Updation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHSR_PHONE_UPDATE"

    const-string v2, "Phone Number Verification"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ADD_MEMBER"

    const-string v2, "Add New Member"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "MEMBER_UPDATE"

    const-string v2, "Update Member Information"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "MOBILE_NUMBER_VERIFICATION"

    const-string v2, "Mobile Number Verification"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "LMPFU"

    const-string v2, "LMP Follow Up Visit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AMRUTPAN"

    const-string v3, "Amrutpan Abhiyan"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "AMRUTPAN_SUPERVISION"

    const-string v5, "Amrutpan Supervision"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_RIM"

    const-string v5, "Reproductive Info Modification Visit"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_ANC"

    const-string v5, "Ante Natal Care Visit"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_WPD"

    const-string v6, "Pregnancy Outcome Visit (WPD)"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "DISCHARGE"

    const-string v6, "Discharge Date Entry for WPD"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_PNC"

    const-string v6, "Post Natal Care Visit"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_CI"

    const-string v6, "Child Immunisation Visit"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_CS"

    const-string v6, "Child Services Visit"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MR_VACCINATION"

    const-string v6, "Measles and Rubella Drive"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "APPETITE"

    const-string v6, "Appetite Test Alert For Child"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_VAE"

    const-string v6, "Vaccine Adverse Effect Visit"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MIGRATION_IN"

    const-string v6, "Migration In"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MIGRATION_OUT"

    const-string v6, "Migration Out"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MIGRATION_IN_CONFIRMATION"

    const-string v6, "Migration In Confirmation"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MIGRATION_OUT_CONFIRMATION"

    const-string v6, "Migration Out Confirmation"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MIGRATION_REVERTED"

    const-string v6, "Reverted Migration"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FAMILY_MIGRATION_REVERTED"

    const-string v6, "Reverted Family Migration"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "GAURAVI_DIWAS"

    const-string v6, "Gauravi Diwas"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MI"

    const-string v6, "Migration-in Alert"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MO"

    const-string v6, "Migration-out Alert"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FMI"

    const-string v6, "Family Migration-in Alert"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FMO"

    const-string v6, "Family Migration-out Alert"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "READ_ONLY"

    const-string v6, "Read Only Alert"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "TT2_ALERT"

    const-string v7, "TT2 Alert"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "IRON_SUCROSE_ALERT"

    const-string v7, "Iron Sucrose Alert"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "DPT_BOOSTER_2_ALERT"

    const-string v7, "DPT Booster 2 Alert"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "SAM_SCREENING"

    const-string v7, "SAM Screening"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "MAMTA_DAY"

    const-string v8, "Mamta Day Workplan"

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "OTHER_SERVICES"

    const-string v8, "Other Services Workplan"

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "REPORTED_EVENT_BY_ASHA"

    const-string v8, "Confirmation of ASHA reported Events"

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "ADOLESCENT_HEALTH_SCREENING"

    const-string v8, "Adolescent Health Screening"

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v4, "FHW_NS"

    const-string v8, "Namoshree"

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AMRUTPAN_MISSED"

    const-string v3, "Amrutpan Abhiyan Missed Notifications"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AMRUTPAN_UC"

    const-string v3, "Amrutpan Abhiyan Underweight Child Alert"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NCD_FHW_HYPERTENSION"

    const-string v3, "NCD Hypertension Screening"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NCD_FHW_DIABETES"

    const-string v3, "NCD Diabetes Screening"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NCD_FHW_ORAL"

    const-string v3, "NCD Oral Screening"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NCD_FHW_BREAST"

    const-string v3, "NCD Breast Screening"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NCD_FHW_CERVICAL"

    const-string v3, "NCD Cervical Screening"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NCD_ASHA_CBAC"

    const-string v3, "NCD CBAC Screening"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_LMPFU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_HBNC"

    const-string v2, "HBNC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_HBYC"

    const-string v2, "HBYC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_PNC"

    const-string v2, "HBNC Visit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_CS"

    const-string v2, "HBYC Visit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_NPCB"

    const-string v2, "National Program for Blindness Control Screening"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NPCB_SPECTS_APPROVAL"

    const-string v3, "Spects Approval"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "OA_NPCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "OA_NPCB_FU"

    const-string v3, "OA National Program for Blindness Control Follow Up"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "CHO_NPCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "CHO_NPCB_FU"

    const-string v2, "National Program for Blindness Control Follow Up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_ANC"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_WPD"

    const-string v2, "Work Plan Delivery Visit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "REPORT_FAMILY_MIGRATION"

    const-string v2, "Report Family Migration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "REPORT_FAMILY_SPLIT"

    const-string v2, "Report Family Split"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "REPORT_MIGRATION"

    const-string v2, "Report Member Migration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "REPORT_DEATH"

    const-string v2, "Report Member Death"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "REPORT_DELIVERY"

    const-string v2, "Report Member Delivery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_PREG_CONF"

    const-string v2, "Pregnancy Confirmation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_DEATH_CONF"

    const-string v2, "Death Confirmation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_DELIVERY_CONF"

    const-string v2, "Delivery Confirmation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_MEMBER_MIGRATION"

    const-string v2, "Process Member Migration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_FAMILY_MIGRATION"

    const-string v2, "Process Family Migration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_FAMILY_SPLIT"

    const-string v2, "Process Family Split"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "SHG"

    const-string v2, "Self Help Group"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_READ_ONLY"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FAM_MIG_OUT"

    const-string v2, "Family Migration OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FAM_MIG_IN_CONF"

    const-string v2, "Family Migration IN Confirmation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AWW_CS"

    const-string v2, "Child Service Visit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AWW_THR"

    const-string v2, "Take Home Ration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AWW_HEIGHT_GROWTH_GRAPH"

    const-string v2, "Child Height growth chart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AWW_WEIGHT_GROWTH_GRAPH"

    const-string v2, "Child Weight growth chart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "AWW_DAILY_NUTRITION"

    const-string v2, "Daily Nutrition"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_SAM_SCREENING_REF"

    const-string v2, "SAM Screening Referral"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ASHA_SAM_SCREENING"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "CMAM_FOLLOWUP"

    const-string v2, "CMAM followup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FHW_SAM_AFTER_CMAM"

    const-string v2, "Monthly SAM Screening"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "PREGNANCY_STATUS"

    const-string v2, "Pregnancy Status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "GMA"

    const-string v2, "Geriatrics Medication"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "TRAVELLERS_SCREENING"

    const-string v2, "Travellers\' Screening"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "IDSP_MEMBER"

    const-string v2, "IDSP MEMBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "IDSP_MEMBER_2"

    const-string v2, "Member Surveillance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "IDSP_FAMILY_2"

    const-string v2, "Family Surveillance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "IDSP_NEW_FAMILY"

    const-string v2, "Surveillance New Family"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "LMS_TEST"

    const-string v2, "Learning Test"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "OFFLINE_ABHA_NUMBER_CREATIONS"

    const-string v2, "Offline ABHA Number Creation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "MALARIA_EXAMINE"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "MALARIA_TREATMENT"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ANC_REFERRAL_VISIT"

    const-string v2, "Anc Referral Visit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "NWC"

    const-string v2, "Newly Wed Couples"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VHRPW"

    const-string v2, "Very High Risk Women"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "MENTAL_ILLNESS"

    const-string v2, "Mental Health Screening"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ELDERLY_CARE"

    const-string v2, "Elderly Care"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "IFA_TO_SCHOOL"

    const-string v2, "IFA Supplementation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "LAB_TEST_MALARIA"

    const-string v2, "Malaria Slides Collection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "LCDC_CAMPAIGN"

    const-string v2, "Leprosy Routine Survey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "FILARIASIS_CAMPAIGN"

    const-string v2, "Filaria Drug campaign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "LCDC_CAMPAIGN_02"

    const-string v2, "LCDC Campaign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VBDS_WATER_QUALITY_MONITORING"

    const-string v2, "VBDS Water Quality Monitoring"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VBDS_ANTILARVAL_ACTIVITIES"

    const-string v2, "VBDS Antilarval Activities"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VBDS_ANTI_VECTOR_INTERVENTIONS"

    const-string v2, "VBDS Anti-vector Interventions"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VBDS_MALARIA_TESTING"

    const-string v2, "VBDS Malaria Testing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VBDS_TPT_EVALUATION"

    const-string v2, "VBDS Tpt Evaluation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "VBDS_CHLORINATION_STATUS"

    const-string v2, "VBDS Chlorination Status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    const-string v1, "ILA_BASELINE"

    const-string v2, "Base Line Survey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->entityFullFormNames:Ljava/util/Map;

    return-object v0
.end method

.method public static getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1911
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    .line 1917
    :pswitch_0
    const-string p0, "Transgender"

    return-object p0

    .line 1913
    :pswitch_1
    const-string p0, "Male"

    return-object p0

    .line 1915
    :pswitch_2
    const-string p0, "Female"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_2
        0x4d -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getGenderValueAs123FromGender(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1927
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1935
    const-string p0, "0"

    return-object p0

    .line 1933
    :pswitch_0
    const-string p0, "3"

    return-object p0

    .line 1929
    :pswitch_1
    const-string p0, "1"

    return-object p0

    .line 1931
    :pswitch_2
    const-string p0, "2"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_2
        0x4d -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImmunisationDateMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 2130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    .line 2131
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2132
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v2, 0x1

    .line 2134
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2135
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2136
    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2138
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2139
    const-string v6, "VITAMIN_A"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2140
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_1

    .line 2141
    aget-object v7, v3, p0

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2142
    :cond_1
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v3, v3, p0

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2146
    :cond_2
    aget-object v3, v3, p0

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 2150
    const-string v4, "UtilBean"

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getIronFolicAcidTablet(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    const/16 v0, 0x18

    if-gt p0, v0, :cond_0

    .line 625
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Iron_Folic_>6_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2008
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LMS_MEDIA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "%s_%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLastUpdatedTime(J)Ljava/lang/String;
    .locals 9

    .line 1417
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1418
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1419
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1420
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1421
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Last Updated Time :"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v7, "(hh:mm a)"

    cmp-long v8, v3, v5

    if-nez v8, :cond_0

    .line 1424
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Today"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x5

    const/4 v4, -0x1

    .line 1427
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1428
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 1429
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Yesterday"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1432
    :cond_1
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-lez v1, :cond_2

    .line 1434
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy hh:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1436
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Not updated till now"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 496
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getListOfOptions(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 517
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 519
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getMalnutritionGradeMapForBOYS()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    .line 203
    const-string v1, "0"

    const-string v2, "2.1~2.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "1"

    const-string v2, "3.0~3.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "2"

    const-string v2, "3.8~4.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "3"

    const-string v2, "4.5~5.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "4"

    const-string v2, "4.9~5.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "5"

    const-string v2, "5.3~6.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "6"

    const-string v2, "5.7~6.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "7"

    const-string v2, "5.9~6.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "8"

    const-string v2, "6.2~6.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "9"

    const-string v2, "6.4~7.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "10"

    const-string v2, "6.6~7.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "11"

    const-string v2, "6.8~7.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "12"

    const-string v2, "6.9~7.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "13"

    const-string v2, "7.1~7.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "14"

    const-string v2, "7.2~8.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "15"

    const-string v2, "7.4~8.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "16"

    const-string v2, "7.5~8.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "17"

    const-string v2, "7.6~8.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "18"

    const-string v2, "7.8~8.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "19"

    const-string v2, "8.0~8.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "20"

    const-string v2, "8.1~9.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "21"

    const-string v2, "8.3~9.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "22"

    const-string v2, "8.3~9.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "23"

    const-string v2, "8.4~9.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "24"

    const-string v2, "8.5~9.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "25"

    const-string v2, "8.6~9.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "26"

    const-string v2, "8.8~10.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "27"

    const-string v2, "9.0~10.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "28"

    const-string v2, "9.1~10.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "29"

    const-string v2, "9.2~10.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "30"

    const-string v2, "9.3~10.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "31"

    const-string v2, "9.4~10.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "32"

    const-string v2, "9.5~10.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "33"

    const-string v2, "9.7~10.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "34"

    const-string v2, "9.8~11.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "35"

    const-string v2, "9.9~11.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "36"

    const-string v2, "10.0~11.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "37"

    const-string v2, "10.1~11.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "38"

    const-string v2, "10.2~11.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "39"

    const-string v2, "10.3~11.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "40"

    const-string v2, "10.4~11.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "41"

    const-string v2, "10.5~11.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "42"

    const-string v2, "10.6~12.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "43"

    const-string v2, "10.7~12.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "44"

    const-string v2, "10.8~12.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "45"

    const-string v2, "10.9~12.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "46"

    const-string v2, "11.0~12.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "47"

    const-string v2, "11.1~12.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "48"

    const-string v2, "11.2~12.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "49"

    const-string v2, "11.3~12.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "50"

    const-string v2, "11.4~12.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "51"

    const-string v2, "11.5~13.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "52"

    const-string v2, "11.6~13.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "53"

    const-string v2, "11.7~13.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "54"

    const-string v2, "11.8~13.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "55"

    const-string v2, "11.9~13.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "56"

    const-string v2, "12.0~13.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "57"

    const-string v2, "12.1~13.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "58"

    const-string v2, "12.2~13.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "59"

    const-string v2, "12.3~13.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    const-string v1, "60"

    const-string v2, "12.4~14.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapBoy:Ljava/util/Map;

    return-object v0
.end method

.method public static getMalnutritionGradeMapForGIRLS()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    .line 271
    const-string v1, "0"

    const-string v2, "2.0~2.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "1"

    const-string v2, "2.7~3.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "2"

    const-string v2, "3.4~3.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "3"

    const-string v2, "4.0~4.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "4"

    const-string v2, "4.4~5.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "5"

    const-string v2, "4.8~5.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "6"

    const-string v2, "5.1~5.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "7"

    const-string v2, "5.3~6.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "8"

    const-string v2, "5.6~6.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "9"

    const-string v2, "5.8~6.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "10"

    const-string v2, "5.9~6.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "11"

    const-string v2, "6.1~6.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "12"

    const-string v2, "6.2~7.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "13"

    const-string v2, "6.4~7.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "14"

    const-string v2, "6.5~7.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "15"

    const-string v2, "6.7~7.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "16"

    const-string v2, "6.8~7.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "17"

    const-string v2, "7.0~7.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "18"

    const-string v2, "7.2~8.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "19"

    const-string v2, "7.3~8.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "20"

    const-string v2, "7.5~8.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "21"

    const-string v2, "7.6~8.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "22"

    const-string v2, "7.7~8.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "23"

    const-string v2, "7.9~8.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "24"

    const-string v2, "8.0~9.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "25"

    const-string v2, "8.2~9.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "26"

    const-string v2, "8.3~9.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "27"

    const-string v2, "8.5~9.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "28"

    const-string v2, "8.6~9.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "29"

    const-string v2, "8.8~9.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "30"

    const-string v2, "8.9~10.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "31"

    const-string v2, "9.0~10.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "32"

    const-string v2, "9.2~10.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "33"

    const-string v2, "9.3~10.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "34"

    const-string v2, "9.4~10.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "35"

    const-string v2, "9.5~10.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "36"

    const-string v2, "9.6~10.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "37"

    const-string v2, "9.7~11.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "38"

    const-string v2, "9.8~11.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "39"

    const-string v2, "9.9~11.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "40"

    const-string v2, "10.0~11.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "41"

    const-string v2, "10.2~11.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "42"

    const-string v2, "10.3~11.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "43"

    const-string v2, "10.4~11.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "44"

    const-string v2, "10.5~11.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "45"

    const-string v2, "10.6~12.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "46"

    const-string v2, "10.7~12.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "47"

    const-string v2, "10.8~12.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "48"

    const-string v2, "10.9~12.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "49"

    const-string v2, "11.0~12.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "50"

    const-string v2, "11.1~12.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "51"

    const-string v2, "11.2~12.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "52"

    const-string v2, "11.3~12.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "53"

    const-string v2, "11.4~12.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "54"

    const-string v2, "11.5~13.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "55"

    const-string v2, "11.6~13.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "56"

    const-string v2, "11.7~13.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "57"

    const-string v2, "11.8~13.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "58"

    const-string v2, "11.9~13.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "59"

    const-string v2, "12.0~13.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    const-string v1, "60"

    const-string v2, "12.1~13.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->malnutritionGradeMapGirl:Ljava/util/Map;

    return-object v0
.end method

.method public static getMemberFullName(Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;)Ljava/lang/String;
    .locals 3

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1715
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eqz v1, :cond_1

    .line 1719
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1723
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getLastName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 1727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1729
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;
    .locals 4

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1735
    const-string v1, ""

    if-eqz p0, :cond_3

    .line 1736
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 1740
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1744
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 1748
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;
    .locals 4

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1691
    const-string v1, ""

    if-eqz p0, :cond_3

    .line 1692
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1693
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 1696
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1700
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 1704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getMemberFullNameForDisplay(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 8

    .line 1595
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1597
    new-instance v1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v1, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1598
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-virtual {v1, p0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    if-eqz v0, :cond_4

    .line 1601
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1603
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberUHId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1604
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    .line 1606
    const-string v3, " null"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1607
    const-string v3, "null "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1608
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1610
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1612
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v2

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1613
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, 0x70

    const/4 v6, 0x6

    const/16 v7, 0x30

    invoke-static {v7, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v3, v0, v5, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1614
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1615
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1616
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x10000

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v3, v0, v5, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1617
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    aget v0, v0, v5

    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 1618
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0xffff01

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v3, v0, v5, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1621
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/material/textview/MaterialTextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method

.method public static getMemberType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;
    .locals 7

    .line 2258
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfYears(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 2259
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2260
    const-string p0, "PW"

    return-object p0

    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 2262
    const-string p0, "C"

    return-object p0

    :cond_1
    const/4 v2, 0x7

    if-gt v0, v2, :cond_2

    .line 2264
    const-string p0, "C_5_20"

    return-object p0

    .line 2266
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, -0x3c

    .line 2267
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 2268
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 2269
    const-string p0, "PNC"

    return-object p0

    .line 2271
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, -0xf

    const/4 v2, 0x1

    .line 2272
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 2273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/16 v3, -0x22

    .line 2274
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 2275
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2277
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    const/4 v4, -0x1

    .line 2278
    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 2279
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v6, v4, v1

    if-gez v6, :cond_5

    .line 2280
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v1, v4

    if-lez v0, :cond_5

    .line 2281
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDateOfWedding()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_4

    .line 2282
    const-string p0, "NWC"

    return-object p0

    .line 2284
    :cond_4
    const-string p0, "EC"

    return-object p0

    .line 2287
    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public static getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
    .locals 13

    .line 1535
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1540
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1542
    new-instance v1, Lcom/google/android/material/textview/MaterialTextView;

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5, v4}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x0

    const/16 v6, 0xf

    .line 1543
    invoke-virtual {v1, v4, v4, v4, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    if-eqz p1, :cond_7

    .line 1545
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 1551
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1552
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    sget v7, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-direct {v3, p0, v5, v7}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v7, 0x2737

    .line 1553
    invoke-virtual {v3, v7}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    const/16 v7, 0x14

    .line 1554
    invoke-virtual {v3, v4, v7, v4, v7}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 1555
    invoke-virtual {v3, v7}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    .line 1556
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1560
    const-string v8, " null"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1561
    const-string v8, "null "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1562
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1564
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1565
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->detailsTextColor:I

    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-interface {v8, v7, v4, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1567
    sget v7, Lcom/argusoft/sewa/android/app/R$font;->roboto_bold:I

    invoke-static {p0, v7}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1569
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/graphics/Typeface;->getStyle()I

    move-result v7

    invoke-direct {v9, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {v8, v9, v4, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1572
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1573
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-interface {v8, v7, v4, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1574
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v7

    const-string v9, "F"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1575
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1576
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->pregnantWomenTextColor:I

    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-interface {v8, v7, v4, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1577
    :cond_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v7

    aget v7, v7, v4

    const/4 v9, 0x5

    if-ge v7, v9, :cond_5

    .line 1578
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->childrenTextColor:I

    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-interface {v8, v7, v4, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1581
    :cond_5
    :goto_2
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1582
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1585
    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablePadding(I)V

    .line 1586
    invoke-virtual {v3, v8}, Lcom/google/android/material/textview/MaterialTextView;->append(Ljava/lang/CharSequence;)V

    .line 1587
    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTag(Ljava/lang/Object;)V

    .line 1588
    invoke-virtual {v3, p2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    return-object v0

    .line 1546
    :cond_7
    :goto_3
    const-string p0, "No members registered in the family"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v4

    const-string p0, "%s!"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;
    .locals 8

    .line 1487
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1492
    :goto_0
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x0

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 1493
    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    if-eqz p1, :cond_8

    .line 1495
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 1500
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1501
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1504
    const-string v5, " null"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1505
    const-string v5, "null "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1506
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1508
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1509
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget v6, Lcom/argusoft/sewa/android/app/R$color;->detailsTextColor:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v5, v4, v2, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1511
    sget v4, Lcom/argusoft/sewa/android/app/R$font;->roboto_bold:I

    invoke-static {p0, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1513
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v5, v6, v2, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1516
    :cond_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1517
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v5, v3, v2, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1518
    :cond_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v4

    const-string v6, "F"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1519
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1520
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->pregnantWomenTextColor:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v5, v3, v2, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1521
    :cond_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v3

    aget v3, v3, v2

    const/4 v4, 0x5

    if-ge v3, v4, :cond_6

    .line 1522
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->childrenTextColor:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v5, v3, v2, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 1526
    invoke-virtual {v0, v5}, Lcom/google/android/material/textview/MaterialTextView;->append(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    .line 1528
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    return-object v0

    .line 1496
    :cond_8
    :goto_3
    const-string p0, "No members registered in the family"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%s!"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static getMilliSeconds(III)J
    .locals 4

    const-wide/16 v0, 0x16d

    int-to-long v2, p0

    mul-long v2, v2, v0

    const-wide/16 v0, 0x1e

    int-to-long p0, p1

    mul-long p0, p0, v0

    add-long/2addr v2, p0

    int-to-long p0, p2

    add-long/2addr v2, p0

    const-wide/32 p0, 0x5265c00

    mul-long v2, v2, p0

    return-wide v2
.end method

.method public static getMotherAndFatherNameForListDisplay(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;
    .locals 3

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2214
    const-string v1, "Mother"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMotherName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFatherName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;

    move-result-object p0

    .line 2218
    const-string p1, "Not available"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2219
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Father"

    .line 2220
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMotherName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 2230
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2231
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2232
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2233
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2235
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2239
    :cond_1
    const-string p0, "Not available"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMyLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 736
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    const-string v0, "[ \n]"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/LabelBean;-><init>()V

    .line 742
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setLabelKey(Ljava/lang/String;)V

    .line 743
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v0, :cond_1

    .line 744
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_1
    const-string v0, "GU"

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setLanguage(Ljava/lang/String;)V

    .line 749
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 750
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LabelBean;->getMapIndex()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LabelBean;

    if-eqz v0, :cond_2

    .line 752
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LabelBean;->getLabelValue()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1819
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1822
    :cond_0
    const-string p0, "Not available"

    return-object p0
.end method

.method public static getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1812
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1815
    :cond_0
    const-string p0, "Not available"

    return-object p0
.end method

.method public static getNumberOfDays(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    .line 1480
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1481
    new-instance p0, Lorg/joda/time/DateTime;

    invoke-direct {p0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1483
    invoke-static {v0, p0}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/Days;->getDays()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNumberOfMonths(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    .line 1466
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1467
    new-instance p0, Lorg/joda/time/DateTime;

    invoke-direct {p0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1469
    invoke-static {v0, p0}, Lorg/joda/time/Months;->monthsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Months;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/Months;->getMonths()I

    move-result p0

    return p0
.end method

.method public static getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    .line 1473
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1474
    new-instance p0, Lorg/joda/time/DateTime;

    invoke-direct {p0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1476
    invoke-static {v0, p0}, Lorg/joda/time/Weeks;->weeksBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Weeks;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getWeeks()I

    move-result p0

    return p0
.end method

.method public static getNumberOfYears(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    .line 1459
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1460
    new-instance p0, Lorg/joda/time/DateTime;

    invoke-direct {p0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 1462
    invoke-static {v0, p0}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Years;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/Years;->getYears()I

    move-result p0

    return p0
.end method

.method public static getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    if-eqz p1, :cond_0

    .line 529
    const-string p1, "-1"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 530
    const-string p1, "-Select-"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 535
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Countries list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 536
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 537
    const-string v2, "0"

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 538
    const-string v2, "Within India"

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 539
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Doctors List"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 543
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getHealthInfraOfficersAssignedToUser()Ljava/util/List;

    move-result-object p1

    .line 544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 545
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 546
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 547
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 549
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_3
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    const v2, 0x48f8ef0

    .line 554
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 555
    const-string v2, "Other"

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 556
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDataMapValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 560
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 561
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    .line 562
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 563
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getIdOfValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 565
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setNext(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setRelatedProperty(Ljava/lang/String;)V

    .line 567
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 572
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 574
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 575
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 576
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setNext(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setRelatedProperty(Ljava/lang/String;)V

    .line 580
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getRelatedProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setRelatedProperty(Ljava/lang/String;)V

    goto :goto_2

    .line 586
    :cond_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 587
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 588
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object p0

    .line 589
    const-string p1, "-"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 590
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setDefaultMiddleNames"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 591
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->middleNameList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 592
    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setDefaultMembersUnder20"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 593
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 594
    :cond_9
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setGivenVaccinesToChild"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 595
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->givenVaccinesToChild:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 596
    :cond_a
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setMembersFrom3To6Years"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 597
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->childrenFrom3To6Years:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 598
    :cond_b
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "setDefaultNonHofMemberNames"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 599
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->nonHofMemberNameList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_3
    return-object v0
.end method

.method public static getPCMTabletDosage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/16 v0, 0x18

    if-gt p0, v0, :cond_0

    .line 651
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "PCM_>2_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_0

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getScaledBitmapForDisplay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2158
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2159
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2160
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2161
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2162
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 2165
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 2166
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 2168
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2169
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2170
    invoke-static {v3, v1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 2171
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 2174
    invoke-static {p0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2175
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public static getStartOfFinancialYear(Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    .line 1981
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 1983
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 p0, 0x2

    .line 1986
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1987
    :goto_0
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1988
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 1989
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    const/4 v1, 0x0

    .line 1990
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1991
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 1992
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 1993
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1994
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedExtensions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1871
    const-string v1, "3gp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    const-string v1, "mp4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1873
    const-string v1, "jpg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    const-string v1, "png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    const-string v1, "mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    const-string v1, "pdf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTimeSpentFromMillis(Ljava/lang/Long;)Ljava/lang/String;
    .locals 12

    .line 2017
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 2018
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2020
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v2, 0x36ee80

    div-long v6, v4, v2

    .line 2021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2023
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v2, 0xea60

    div-long v8, v4, v2

    .line 2024
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2026
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    const/4 p0, 0x0

    const/4 v2, 0x1

    const-wide/16 v10, 0x0

    cmp-long v3, v0, v10

    if-eqz v3, :cond_0

    .line 2030
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, p0

    const-string v0, "%sd"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2029
    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x2

    cmp-long v3, v6, v10

    if-eqz v3, :cond_1

    .line 2034
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, p0

    aput-object v3, v6, v2

    const-string v0, "%s %sh"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    .line 2038
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, p0

    aput-object v3, v6, v2

    const-string v0, "%s %sm"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p0

    aput-object v3, v1, v2

    const-string p0, "%s %ss"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2042
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeTakenBetweenTwoDates(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1940
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1941
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 1942
    div-long/2addr v0, v2

    mul-long v0, v0, v2

    .line 1943
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 1944
    div-long/2addr p0, v2

    mul-long p0, p0, v2

    .line 1945
    new-instance v2, Lorg/joda/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 1946
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 1948
    new-instance p0, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDayTime()Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-direct {p0, v2, v0, p1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V

    .line 1949
    invoke-static {}, Lorg/joda/time/format/PeriodFormat;->getDefault()Lorg/joda/time/format/PeriodFormatter;

    move-result-object p1

    .line 1951
    invoke-virtual {p1, p0}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTitleText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1778
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserFullName(Lcom/argusoft/sewa/android/app/model/UserBean;)Ljava/lang/String;
    .locals 3

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1671
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/UserBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1672
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/UserBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/UserBean;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eqz v1, :cond_1

    .line 1675
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/UserBean;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/UserBean;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1679
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/UserBean;->getLastName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 1683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1685
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getVaccineNamesFromImmunizationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 473
    const-string v0, ""

    if-eqz p0, :cond_2

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 478
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 479
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 480
    aget-object v6, v5, v3

    const/4 v7, 0x1

    .line 481
    aget-object v5, v5, v7

    .line 482
    const-string v8, "BCG"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PENTA_1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "OPV_1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 483
    :cond_0
    const-string v0, "_"

    const-string v8, " "

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v5, v6, v7

    const-string v0, "%s - %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getVisitDurationForAmrutpan(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2357
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->VISIT_DURATION_MAP_FOR_AMRUTPAN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2358
    :cond_0
    const-string p0, "N/A"

    :goto_0
    return-object p0
.end method

.method public static getVitaminADosage(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0xc

    if-le p0, v0, :cond_0

    if-gt p0, v1, :cond_0

    .line 681
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Vitamin_A_6-12_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-le p0, v1, :cond_1

    .line 683
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageHashTable()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Vitamin_A_>12_M"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    .line 2119
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2121
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2124
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2126
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static isAlphaNumericWithSpace(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 994
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".*["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!~.;-^*:_|@#%+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "].*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public static isDateIn(J[Ljava/lang/String;J)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_3

    .line 1088
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1089
    invoke-virtual {v3, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1090
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1091
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 1093
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    cmp-long v4, p3, v1

    if-lez v4, :cond_0

    .line 1095
    invoke-virtual {v3, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1098
    :cond_0
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1099
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    if-eqz p2, :cond_3

    .line 1105
    array-length v1, p2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    const/4 v1, 0x2

    .line 1107
    :try_start_0
    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    .line 1108
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    .line 1109
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    .line 1115
    aget-object v5, p2, v4

    const-string v6, "Sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1116
    invoke-static {p3, p4, v1, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDateMinus(JIII)J

    move-result-wide v1

    cmp-long p2, v1, p0

    if-gtz p2, :cond_1

    cmp-long p2, p0, p3

    if-gtz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1118
    :cond_2
    aget-object p2, p2, v4

    const-string v5, "Add"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1119
    invoke-static {p3, p4, v1, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDatePlus(JIII)J

    move-result-wide v1

    cmp-long p2, p3, p0

    if-gtz p2, :cond_3

    cmp-long p2, p0, v1

    if-gtz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static isDateOut(J[Ljava/lang/String;J)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_5

    .line 1129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1130
    invoke-virtual {v3, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1131
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1132
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 1134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    cmp-long v4, p3, v1

    if-lez v4, :cond_0

    .line 1136
    invoke-virtual {v3, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1139
    :cond_0
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1140
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    if-eqz p2, :cond_5

    .line 1145
    array-length v1, p2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    const/4 v1, 0x2

    .line 1147
    :try_start_0
    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    .line 1148
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    .line 1149
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    .line 1156
    aget-object v5, p2, v4

    const-string v6, "Sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1157
    invoke-static {p3, p4, v1, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDateMinus(JIII)J

    move-result-wide v1

    cmp-long p2, v1, p0

    if-gez p2, :cond_1

    cmp-long p2, p0, p3

    if-lez p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1159
    :cond_3
    aget-object p2, p2, v4

    const-string v5, "Add"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1160
    invoke-static {p3, p4, v1, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateDatePlus(JIII)J

    move-result-wide v1

    cmp-long p2, p3, p0

    if-gtz p2, :cond_4

    cmp-long p2, p0, v1

    if-ltz p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 761
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isFutureDate(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-lez v3, :cond_0

    .line 1021
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1022
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1023
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1025
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1026
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1027
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long v0, v3, p0

    if-gez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isNotInGivenRange(III)Z
    .locals 0

    if-le p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPastDate(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-lez v3, :cond_0

    .line 1036
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1037
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1038
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1040
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1041
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1042
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long v0, v3, p0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isToday(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-lez v3, :cond_0

    .line 1051
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1052
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1053
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1055
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1056
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1057
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long v0, v3, p0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isValidNumber(Ljava/lang/String;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1004
    const-string v1, "GreaterThan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1006
    :cond_1
    const-string v1, "LessThan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    cmpg-float p0, p1, p2

    if-gez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1008
    :cond_3
    const-string v1, "GreaterThanEq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    cmpl-float p0, p1, p2

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 1010
    :cond_5
    const-string v1, "LessThanEq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method static synthetic lambda$showAlertAndExit$3(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1803
    sget-object p1, Lcom/argusoft/sewa/android/app/util/UtilBean;->dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 1804
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic lambda$showAlertAndExit$4(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1802
    new-instance v4, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;)V

    .line 1806
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/4 v2, 0x0

    const/16 v5, -0x69

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    sput-object p0, Lcom/argusoft/sewa/android/app/util/UtilBean;->dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1807
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$static$1(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 123
    :catch_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    :try_start_1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 127
    :catch_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "MMM dd, yyyy, hh:mm:ss a"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    :try_start_2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 131
    :catch_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "MMM dd, yyyy hh:mm:ss a"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    :try_start_3
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 135
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$static$2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 183
    sget-object v0, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_SORT_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 184
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static noOfDayFromDate(JI)I
    .locals 4

    .line 1213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1214
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1215
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    int-to-long v2, p2

    mul-long v2, v2, p0

    .line 1216
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static pncWeightCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 407
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "childDOB"

    if-nez v1, :cond_0

    .line 410
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 416
    const-string v2, "-"

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 419
    array-length v2, p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    aget-object v2, p1, v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-object v5, p1, v2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    aget-object v6, p1, v5

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v3, v2, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 422
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    const/16 v7, 0xf

    cmpl-double v8, v2, v5

    if-ltz v8, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x3ffffbe76c8b4396L    # 1.999

    cmpg-double v8, v2, v5

    if-gez v8, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v4, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v5

    cmp-long v8, v2, v5

    if-gtz v8, :cond_2

    .line 423
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 425
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v5, 0x0

    cmpl-double v8, v2, v5

    if-lez v8, :cond_3

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide v8, 0x4000cccccccccccdL    # 2.1

    cmpg-double v10, v2, v8

    if-gez v10, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v4, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-ltz v9, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v7, 0x15

    invoke-static {v4, v4, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-gtz v9, :cond_3

    .line 426
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 428
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const/16 v7, 0x1b

    cmpl-double v8, v2, v5

    if-lez v8, :cond_4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide v8, 0x400199999999999aL    # 2.2

    cmpg-double v10, v2, v8

    if-gez v10, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v8, 0x16

    invoke-static {v4, v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-ltz v10, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v4, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-gtz v10, :cond_4

    .line 429
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 431
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v8, v2, v5

    if-lez v8, :cond_5

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x4002666666666666L    # 2.3

    cmpg-double v8, v2, v5

    if-gez v8, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v4, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_5

    .line 432
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 435
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static removePreviousDosesVitaminA(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2070
    const-string v0, "VITAMIN_A_9"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VITAMIN_A_8"

    const-string v2, "VITAMIN_A_7"

    const-string v3, "VITAMIN_A_6"

    const-string v4, "VITAMIN_A_5"

    const-string v5, "VITAMIN_A_4"

    const-string v6, "VITAMIN_A_3"

    const-string v7, "VITAMIN_A_2"

    const-string v8, "VITAMIN_A_1"

    if-eqz v0, :cond_0

    .line 2071
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2072
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2073
    invoke-interface {p0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2074
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2075
    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2076
    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2077
    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2078
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2079
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2080
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2081
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2082
    invoke-interface {p0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2083
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2084
    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2085
    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2086
    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2087
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2088
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2089
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2090
    invoke-interface {p0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2091
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2092
    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2093
    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2094
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2095
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2096
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2097
    invoke-interface {p0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2098
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2099
    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2100
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2101
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2102
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2103
    invoke-interface {p0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2104
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2105
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2106
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2107
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2108
    invoke-interface {p0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2109
    :cond_5
    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2110
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2111
    invoke-interface {p0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2112
    :cond_6
    invoke-interface {p0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2113
    invoke-interface {p0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 771
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restartApplication(Landroid/content/Context;)V
    .locals 2

    .line 1897
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1898
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1901
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1902
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1904
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method public static returnKeyFromBoolean(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 1849
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1850
    const-string p0, "1"

    return-object p0

    .line 1852
    :cond_0
    const-string p0, "2"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1826
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    const-string p0, "Yes"

    return-object p0

    .line 1828
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1829
    const-string p0, "No"

    return-object p0

    .line 1831
    :cond_1
    const-string p0, "Not available"

    return-object p0
.end method

.method public static returnYesNoNotAvailableFromBoolean(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 1837
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1838
    const-string p0, "Yes"

    return-object p0

    .line 1840
    :cond_0
    const-string p0, "No"

    return-object p0

    .line 1843
    :cond_1
    const-string p0, "Not available"

    return-object p0
.end method

.method public static setWeightDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 725
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 728
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Kgs  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "00  Gms  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 732
    :cond_0
    const-string p0, "Not available"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showAlertAndExit(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1800
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 1801
    new-instance v1, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1173
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 1176
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 775
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 782
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stringListJoin(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 793
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 800
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p2, :cond_1

    .line 803
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static videoFileIsCorrupted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 2057
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2059
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x11

    .line 2060
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 2061
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2062
    const-string p1, "yes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2064
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2065
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 p0, 0x0

    return p0
.end method
