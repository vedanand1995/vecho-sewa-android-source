.class public Lcom/argusoft/sewa/android/app/constants/FullFormConstants;
.super Ljava/lang/Object;
.source "FullFormConstants.java"


# static fields
.field private static cbacDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cbacFamilyDataFullForm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static familyPlanningFullNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static genderFullNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static placeFullNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static vaccinesFullNameMap:Ljava/util/Map;
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
.method private constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFullFormOfCBACConstants(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    .line 98
    const-string v1, "KUCCHA"

    const-string v2, "Kuccha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "PUCCA_STONE_MORTAS"

    const-string v2, "Pucca with stone and mortas"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "PUCCA_BRICKS_CONCRETE"

    const-string v2, "Pucca with bricks and concrete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "FLUSH_WITH_WATER"

    const-string v2, "Flush toilet with running watter supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "FLUSH_WITHOUT_WATER"

    const-string v2, "Flush toilet without running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "PIT_WITH_WATER"

    const-string v2, "Pit toilet with running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "PIT_WITHOUT_WATER"

    const-string v2, "Pit toilet without running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "ELECTRICITY_SUPPLY"

    const-string v2, "Electricity supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "GENERATOR"

    const-string v2, "Generator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "SOLAR_POWER"

    const-string v2, "Solar power"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "KEROSENE_LAMP"

    const-string v2, "Kerosene lamp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "TAP"

    const-string v2, "Tap water"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "HAND_PUMP_INSIDE"

    const-string v2, "Hand pump within house"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "HAND_PUMP_OUTSIDE"

    const-string v2, "Hand pump outside of house"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "WELL"

    const-string v2, "Well"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "TANK"

    const-string v2, "Tank"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "RIVER"

    const-string v2, "River"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "POND"

    const-string v2, "Pond"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "FIREWOOD"

    const-string v2, "Firewood"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "CROP_RESIDUE"

    const-string v2, "Crop Residue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "COW_DUNG_CAKE"

    const-string v2, "Cow Dung Cake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "COAL"

    const-string v2, "Coal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "KEROSENE"

    const-string v2, "Kerosene"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "MOTOR_BIKE"

    const-string v2, "Motor Bike"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "CAR"

    const-string v2, "Car"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "TRACTOR"

    const-string v2, "Tractor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "RENT"

    const-string v2, "Rent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "OWN"

    const-string v2, "Own"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "0_TO_10K"

    const-string v2, "0 to 10000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "10K_TO_20K"

    const-string v2, "10000 to 20000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "20K_TO_30K"

    const-string v2, "20000 to 30000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "30K_TO_50K"

    const-string v2, "30000 to 50000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "50K_TO_100K"

    const-string v2, "50000 to 100000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "100K_TO_200K"

    const-string v2, "100000 to 200000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "GT_200K"

    const-string v2, "More than 200000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "DONT_KNOW"

    const-string v2, "Don\u2019t know"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "NEVER"

    const-string v2, "Never"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "IN_PAST"

    const-string v2, "Used to consume in Past/ Sometimes now"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "DAILY"

    const-string v2, "Daily"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "LT80"

    const-string v2, "80 cm or less"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "81TO90"

    const-string v2, "81-90 cm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "GT90"

    const-string v2, "More than 90 cm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "LT90"

    const-string v2, "90 cm or less"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "91TO100"

    const-string v2, "91-100 cm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "GT100"

    const-string v2, "More than 100 cm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "ATLEAST_150"

    const-string v2, "Atleast 150 minutes in a week"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "LESS_THAN_150"

    const-string v2, "Less than 150 minutes in a week"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "CROP_BURNING"

    const-string v2, "Crop residue burning / burning of garbage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "INDUSTRY_WORK"

    const-string v2, "Leaves / Working in industries with smoke, gas and dust exposure such as brick kilns and glass factories etc."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "NONE"

    const-string v2, "None"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "OTHER"

    const-string v2, "Other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "NORMAL"

    const-string v2, "Normal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "HEAVY"

    const-string v2, "Heavy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "CLOTS"

    const-string v2, "Clots"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    const-string v1, "PAIN"

    const-string v2, "Pain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacDetails:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public static getFullFormOfCBACFamilyDataConstants(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    .line 242
    const-string v1, "OTHER"

    const-string v2, "Other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "KUCCHA"

    const-string v2, "Kuccha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "PUCCA_STONE_MORTAS"

    const-string v2, "Pucca with stone and mortas"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "PUCCA_BRICKS_CONCRETE"

    const-string v2, "Pucca with bricks and concrete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "FLUSH_WITH_WATER"

    const-string v2, "Flush toilet with running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "FLUSH_WITHOUT_WATER"

    const-string v2, "Flush toilet without running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "PIT_WITH_WATER"

    const-string v2, "Pit toilet with running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "PIT_WITHOUT_WATER"

    const-string v2, "Pit toilet without running water supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "ELECTRICITY_SUPPLY"

    const-string v2, "Electricity supply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "GENERATOR"

    const-string v2, "Generator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "SOLAR_POWER"

    const-string v2, "Solar power"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "KEROSENE_LAMP"

    const-string v2, "Kerosene lamp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "TAP"

    const-string v2, "Tap water"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "HAND_PUMP_INSIDE"

    const-string v2, "Hand pump within house"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "HAND_PUMP_OUTSIDE"

    const-string v2, "Hand pump outside of house"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "WELL"

    const-string v2, "Well"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "TANK"

    const-string v2, "Tank"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "RIVER"

    const-string v2, "River"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "POND"

    const-string v2, "Pond"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "FIREWOOD"

    const-string v2, "Firewood"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "CROP_RESIDUE"

    const-string v2, "Crop Residue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "COW_DUNG_CAKE"

    const-string v2, "Cow Dung Cake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "COAL"

    const-string v2, "Coal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "KEROSENE"

    const-string v2, "Kerosene"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "LPG"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "MOTOR_BIKE"

    const-string v2, "Motor Bike"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "CAR"

    const-string v2, "Car"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "TRACTOR"

    const-string v2, "Tractor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "RENT"

    const-string v2, "Rent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "OWN"

    const-string v2, "Own"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "0_TO_10K"

    const-string v2, "0 to 10000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "10K_TO_20K"

    const-string v2, "10000 to 20000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "20K_TO_30K"

    const-string v2, "20000 to 30000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "30K_TO_50K"

    const-string v2, "30000 to 50000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "50K_TO_100K"

    const-string v2, "50000 to 100000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "100K_TO_200K"

    const-string v2, "100000 to 200000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "GT_200K"

    const-string v2, "More than 200000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    const-string v1, "DONT_KNOW"

    const-string v2, "Don\u2019t know"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->cbacFamilyDataFullForm:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public static getFullFormOfFamilyPlanningMethods(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    .line 66
    const-string v1, "FMLSTR"

    const-string v2, "Female Sterilization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "MLSTR"

    const-string v2, "Male Sterilization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "IUCD5"

    const-string v2, "IUCD - 5 years"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "IUCD10"

    const-string v2, "IUCD - 10 years"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "CONDOM"

    const-string v2, "Condom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "ORALPILLS"

    const-string v2, "Oral Pills"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "CHHAYA"

    const-string v2, "Chaya"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "ANTARA"

    const-string v2, "Antara"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "CONTRA"

    const-string v2, "Emergency Contraceptive Pills"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "PPIUCD"

    const-string v2, "Post Partum IUCD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "PAIUCD"

    const-string v2, "Post Abortion IUCD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "LAPAROSCOPIC_TL"

    const-string v2, "LAPAROSCOPIC TL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "ABDOMINAL_TL"

    const-string v2, "ABDOMINAL TL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "VASECTOMY_FOR_HUSBAND"

    const-string v2, "VASECTOMY (FOR HUSBAND)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "PPTL"

    const-string v2, "POST PARTEM TL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    const-string v1, "PATL"

    const-string v2, "POST ABORTION TL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->familyPlanningFullNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public static getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->genderFullNames:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->genderFullNames:Ljava/util/Map;

    .line 28
    const-string v1, "M"

    const-string v2, "Male"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->genderFullNames:Ljava/util/Map;

    const-string v1, "F"

    const-string v2, "Female"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->genderFullNames:Ljava/util/Map;

    const-string v1, "T"

    const-string v2, "Transgender"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->genderFullNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->genderFullNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public static getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    .line 168
    const-string v1, "HEPATITIS_B_0"

    const-string v2, "Hepatitis B 0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "BCG"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "OPV_0"

    const-string v2, "OPV 0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "OPV_1"

    const-string v2, "OPV 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "OPV_2"

    const-string v2, "OPV 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "OPV_3"

    const-string v2, "OPV 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "OPV_BOOSTER"

    const-string v2, "OPV Booster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "PENTA_1"

    const-string v2, "Penta 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "PENTA_2"

    const-string v2, "Penta 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "PENTA_3"

    const-string v2, "Penta 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "DPT_1"

    const-string v2, "DPT 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "DPT_2"

    const-string v2, "DPT 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "DPT_3"

    const-string v2, "DPT 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "DPT_BOOSTER"

    const-string v2, "DPT Booster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "MEASLES_1"

    const-string v2, "Measles 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "MEASLES_2"

    const-string v2, "Measles 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "F_IPV_1_01"

    const-string v2, "F IPV 1 01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "F_IPV_2_01"

    const-string v2, "F IPV 2 01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "F_IPV_2_05"

    const-string v2, "F IPV 2 05"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "F_IPV_3"

    const-string v2, "F IPV 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A"

    const-string v2, "Vitamin A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_K"

    const-string v2, "Vitamin K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "ROTA_VIRUS_1"

    const-string v2, "Rota Virus 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "ROTA_VIRUS_2"

    const-string v2, "Rota Virus 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "ROTA_VIRUS_3"

    const-string v2, "Rota Virus 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "MEASLES_RUBELLA_1"

    const-string v2, "Measles Rubella 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "MEASLES_RUBELLA_2"

    const-string v2, "Measles Rubella 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "TT1"

    const-string v2, "TD 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "TT2"

    const-string v2, "TD 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "TT_BOOSTER"

    const-string v2, "TD Booster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "MMR"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HIB_1"

    const-string v2, "HIB 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HIB_2"

    const-string v2, "HIB 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HIB_3"

    const-string v2, "HIB 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HEPATITIS_B_1"

    const-string v2, "Hepatitis B 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HEPATITIS_B_2"

    const-string v2, "Hepatitis B 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HEPATITIS_B_3"

    const-string v2, "Hepatitis B 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HEPATITIS_A_1"

    const-string v2, "Hepatitis A 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "HEPATITIS_A_2"

    const-string v2, "Hepatitis A 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "CHICKEN_POX"

    const-string v2, "Chicken Pox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "JE"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "DPT_BOOSTER_2"

    const-string v2, "DPT Booster 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "TT_10"

    const-string v2, "TD 10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "TT_16"

    const-string v2, "TD 16"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "TYPHOID"

    const-string v2, "Typhoid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "PCV_1"

    const-string v2, "PCV 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "PCV_2"

    const-string v2, "PCV 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "PCV_BOOSTER"

    const-string v2, "PCV Booster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_1"

    const-string v2, "Vitamin A 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_2"

    const-string v2, "Vitamin A 2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_3"

    const-string v2, "Vitamin A 3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_4"

    const-string v2, "Vitamin A 4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_5"

    const-string v2, "Vitamin A 5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_6"

    const-string v2, "Vitamin A 6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_7"

    const-string v2, "Vitamin A 7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_8"

    const-string v2, "Vitamin A 8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    const-string v1, "VITAMIN_A_9"

    const-string v2, "Vitamin A 9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->vaccinesFullNameMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public static getFullFormsOfPlace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    .line 45
    const-string v1, "HOME"

    const-string v2, "Home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    const-string v1, "HOSP"

    const-string v2, "Hospital"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    const-string v1, "ON_THE_WAY"

    const-string v2, "On the way"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    const-string v1, "108_AMBULANCE"

    const-string v2, "108 Ambulance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    const-string v1, "OUT_OF_STATE_GOVT"

    const-string v2, "Out of State - Govt. Hospital"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    const-string v1, "OUT_OF_STATE_PVT"

    const-string v2, "Out of State - Private Hospital"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->placeFullNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    return-object p0
.end method
