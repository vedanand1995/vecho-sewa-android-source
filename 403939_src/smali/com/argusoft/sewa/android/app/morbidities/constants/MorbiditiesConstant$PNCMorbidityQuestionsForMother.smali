.class public Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant$PNCMorbidityQuestionsForMother;
.super Ljava/lang/Object;
.source "MorbiditiesConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PNCMorbidityQuestionsForMother"
.end annotation


# static fields
.field public static final ABNORMAL_TALK:Ljava/lang/String; = "Abnormal talks or behaviour observed?"

.field public static final BREAST_FEEDING:Ljava/lang/String; = "Difficulty in breastfeeding?"

.field public static final BREAST_FEEDING_PROBLEM:Ljava/lang/String; = "Does mother have any of following problems?(Tick all that apply)"

.field public static final FEVER:Ljava/lang/String; = "Has fever?"

.field public static final HEADACHE_N_VISUAL:Ljava/lang/String; = "Has headache with visual disturbances?"

.field public static final IF_FOUL_SMELL:Ljava/lang/String; = "If there is any foul smell discharge?"

.field public static final PADS_CHANGED:Ljava/lang/String; = "No. of pads changed in last 24 hours?"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PNCMorbidityQuestionsForMother Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
