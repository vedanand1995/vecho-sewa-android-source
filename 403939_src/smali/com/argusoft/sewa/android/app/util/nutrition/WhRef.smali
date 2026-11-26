.class public Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;
.super Ljava/lang/Object;
.source "WhRef.java"


# instance fields
.field public final median:F

.field public final sdMinus2:F

.field public final sdMinus3:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;->sdMinus3:F

    .line 11
    iput p2, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;->sdMinus2:F

    .line 12
    iput p3, p0, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;->median:F

    return-void
.end method
