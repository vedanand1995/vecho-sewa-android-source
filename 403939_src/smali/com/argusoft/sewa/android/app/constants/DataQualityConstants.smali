.class public Lcom/argusoft/sewa/android/app/constants/DataQualityConstants;
.super Ljava/lang/Object;
.source "DataQualityConstants.java"


# static fields
.field public static final FHW_CH_SER_PREG_VERI:Ljava/lang/String; = "FHW_CH_SER_PREG_VERI"

.field public static final FHW_CH_SER_VERI:Ljava/lang/String; = "FHW_CH_SER_VERI"

.field public static final FHW_DEL_VERI:Ljava/lang/String; = "FHW_DEL_VERI"

.field public static final FHW_TT_VERI:Ljava/lang/String; = "FHW_TT_VERI"

.field public static final PREG_REGI_VERI:Ljava/lang/String; = "PREG_REGI_VERI"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
