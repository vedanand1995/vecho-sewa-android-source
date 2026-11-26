.class public Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;
.super Ljava/lang/Object;
.source "WaRef.java"


# instance fields
.field public final median:F

.field public final sdMinus1:F

.field public final sdMinus2:F

.field public final sdMinus3:F

.field public final sdPlus1:F

.field public final sdPlus2:F

.field public final sdPlus3:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus3:F

    .line 23
    iput p2, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus2:F

    .line 24
    iput p3, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdMinus1:F

    .line 25
    iput p4, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->median:F

    .line 26
    iput p5, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus1:F

    .line 27
    iput p6, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus2:F

    .line 28
    iput p7, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;->sdPlus3:F

    return-void
.end method
