.class public Lcom/argusoft/sewa/android/app/constants/LocationConstants$LocationType;
.super Ljava/lang/Object;
.source "LocationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/constants/LocationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationType"
.end annotation


# static fields
.field public static final ANGANWADI_AREA:Ljava/lang/String; = "ANG"

.field public static final ANM_AREA:Ljava/lang/String; = "ANM"

.field public static final AREA:Ljava/lang/String; = "A"

.field public static final ASHA_AREA:Ljava/lang/String; = "AA"

.field public static final BLOCK:Ljava/lang/String; = "CHC"

.field public static final CHC_AREA:Ljava/lang/String; = "CHCA"

.field public static final CORPORATION:Ljava/lang/String; = "C"

.field public static final DISTRICT:Ljava/lang/String; = "D"

.field public static final PHC:Ljava/lang/String; = "P"

.field public static final STATE:Ljava/lang/String; = "S"

.field public static final SUBCENTER:Ljava/lang/String; = "SC"

.field public static final TALUKA:Ljava/lang/String; = "B"

.field public static final UCHC_AREA:Ljava/lang/String; = "UCHC"

.field public static final UPHC_AREA:Ljava/lang/String; = "U"

.field public static final URBAN:Ljava/lang/String; = "URBAN"

.field public static final URBAN_ASHA_AREA:Ljava/lang/String; = "UAA"

.field public static final URBAN_LOCAL_BODY:Ljava/lang/String; = "ULB"

.field public static final VILLAGE:Ljava/lang/String; = "V"

.field public static final WARD:Ljava/lang/String; = "WARD"

.field public static final ZONE:Ljava/lang/String; = "Z"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
