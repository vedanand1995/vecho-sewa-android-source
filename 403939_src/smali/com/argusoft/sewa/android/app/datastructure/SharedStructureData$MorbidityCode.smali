.class public Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData$MorbidityCode;
.super Ljava/lang/Object;
.source "SharedStructureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MorbidityCode"
.end annotation


# static fields
.field public static final ANEMIA:Ljava/lang/String; = "ANEMA"

.field public static final APH:Ljava/lang/String; = "APH"

.field public static final BAD_OBSTETRIC_HISTORY:Ljava/lang/String; = "BOH"

.field public static final BIRTH_ASPHYXIA:Ljava/lang/String; = "BASP"

.field public static final BLEEDING_FROM_ANY_PART_OF_THE_BODY:Ljava/lang/String; = "BFAP"

.field public static final BREAST_PROBLEMS:Ljava/lang/String; = "BP"

.field public static final CHRONIC_COUGH_OR_COLD:Ljava/lang/String; = "CCC"

.field public static final COLD_COUGH:Ljava/lang/String; = "COCOU"

.field public static final CONJUNCTIVITIS:Ljava/lang/String; = "CONJUC"

.field public static final DECREASED_FOETAL_MOVEMENT:Ljava/lang/String; = "DFM"

.field public static final DIARRHOEA:Ljava/lang/String; = "DIAH"

.field public static final DIARRHOEA_WITH_NO_DEHYDRATION:Ljava/lang/String; = "DWND"

.field public static final DIARRHOEA_WITH_SEVERE_DEHYDRATION:Ljava/lang/String; = "DWSD"

.field public static final DIARRHOEA_WITH_SOME_DEHYDRATION:Ljava/lang/String; = "DSD"

.field public static final DYSENTERY:Ljava/lang/String; = "DYSEN"

.field public static final EMESIS_OF_PREGNANCY:Ljava/lang/String; = "EOP"

.field public static final FEEDING_PROBLEMS:Ljava/lang/String; = "FPRO"

.field public static final FEVER:Ljava/lang/String; = "FEVER"

.field public static final FEVER_PNC:Ljava/lang/String; = "FVRIP"

.field public static final HEPATITIS:Ljava/lang/String; = "HEP"

.field public static final HIGH_RISK_LOW_BIRTH_WEIGHT_PRE_TERM:Ljava/lang/String; = "HRLB"

.field public static final HYPOTHERMIA:Ljava/lang/String; = "HYTH"

.field public static final JAUNDICE:Ljava/lang/String; = "JAUND"

.field public static final LOCAL_INFECTION:Ljava/lang/String; = "LI"

.field public static final LOW_BIRTH_WEIGHT:Ljava/lang/String; = "BWLPC"

.field public static final MALARIA:Ljava/lang/String; = "MALAR"

.field public static final MALARIA_IN_PREGNANCY:Ljava/lang/String; = "MIP"

.field public static final MALPRESENTATION:Ljava/lang/String; = "MAL"

.field public static final MASTITIS:Ljava/lang/String; = "MASTI"

.field public static final MILD_PREGNANCY_INDUCED_HYPERTENSION:Ljava/lang/String; = "MPIH"

.field public static final MODERATE_ANEMIA:Ljava/lang/String; = "MDAN"

.field public static final NIGHT_BLINDNESS:Ljava/lang/String; = "NB"

.field public static final NOT_VERY_LOW_WEIGHT:Ljava/lang/String; = "NVW"

.field public static final NO_ANEMIA:Ljava/lang/String; = "NANEM"

.field public static final PIH:Ljava/lang/String; = "PIHH"

.field public static final PNEUMONIA:Ljava/lang/String; = "PNEUM"

.field public static final PNEUMONIA_CHILD_CARE:Ljava/lang/String; = "PNEUFC"

.field public static final POSSIBLE_TB:Ljava/lang/String; = "PT"

.field public static final POST_PARTUM_INFECTION:Ljava/lang/String; = "PPI"

.field public static final POST_PARTUM_MOOD_DISORDER:Ljava/lang/String; = "PPMD"

.field public static final PPH:Ljava/lang/String; = "PPH"

.field public static final PREMATURE_RUPTURE_OF_MEMBRANE:Ljava/lang/String; = "PRM"

.field public static final PROBABLE_SEVERE_ANEMIA:Ljava/lang/String; = "PSA"

.field public static final SEPSIS:Ljava/lang/String; = "SEP"

.field public static final SEVERE_ABDOMINAL_PAIN:Ljava/lang/String; = "SAP"

.field public static final SEVERE_ANEMIA:Ljava/lang/String; = "SEAM"

.field public static final SEVERE_ANEMIA_FOR_CHILD:Ljava/lang/String; = "SAFC"

.field public static final SEVERE_MALNUTRITION:Ljava/lang/String; = "SMAL"

.field public static final SEVERE_PERSISTENT_DIARRHOEA:Ljava/lang/String; = "SPD"

.field public static final SEVERE_PNEUMONIA_OR_SERIOUS_BACTERIAL_INFECTION:Ljava/lang/String; = "SPSBI"

.field public static final SEVERE_PREGNANCY_INDUCED_HYPERTENSION:Ljava/lang/String; = "SPIH"

.field public static final SICKLE_CELL_CRISIS:Ljava/lang/String; = "SCC"

.field public static final UNINTENTED_PREGNANCY:Ljava/lang/String; = "UP"

.field public static final UPPER_RESPIRATORY_TRACT_INFACTION:Ljava/lang/String; = "URTI"

.field public static final URINARY_TRACT_INFECTION:Ljava/lang/String; = "UTI"

.field public static final VAGINITIS:Ljava/lang/String; = "VAGIN"

.field public static final VERY_LOW_BIRTH_WEIGHT:Ljava/lang/String; = "LBWSH"

.field public static final VERY_LOW_WEIGHT:Ljava/lang/String; = "VLW"

.field public static final VERY_SEVERE_FEBRILE_ILLNESS:Ljava/lang/String; = "VSFI"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
