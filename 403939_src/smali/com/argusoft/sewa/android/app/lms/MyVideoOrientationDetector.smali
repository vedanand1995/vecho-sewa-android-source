.class public Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;
.super Ljava/lang/Object;
.source "MyVideoOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;,
        Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    }
.end annotation


# static fields
.field private static final HOLDING_THRESHOLD:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "OrientationDetector"


# instance fields
.field private context:Landroid/content/Context;

.field private currentOrientation:I

.field private holdingTime:J

.field private lastCalcTime:J

.field private lastDirection:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

.field private listener:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private rotationThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->rotationThreshold:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->holdingTime:J

    .line 18
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastCalcTime:J

    .line 19
    sget-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastDirection:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->currentOrientation:I

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->calcDirection(I)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastDirection:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastDirection:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->resetTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->calcHoldingTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->holdingTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->currentOrientation:I

    return p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->currentOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->listener:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    return-object p0
.end method

.method private calcDirection(I)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 2

    .line 113
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->rotationThreshold:I

    if-le p1, v0, :cond_4

    rsub-int v0, v0, 0x168

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 v0, p1, -0xb4

    .line 116
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->rotationThreshold:I

    if-gt v0, v1, :cond_1

    .line 117
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p1

    :cond_1
    add-int/lit8 v0, p1, -0x5a

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->rotationThreshold:I

    if-gt v0, v1, :cond_2

    .line 119
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p1

    :cond_2
    add-int/lit16 p1, p1, -0x10e

    .line 120
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->rotationThreshold:I

    if-gt p1, v0, :cond_3

    .line 121
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_4
    :goto_0
    sget-object p1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p1
.end method

.method private calcHoldingTime()V
    .locals 7

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastCalcTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 101
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastCalcTime:J

    .line 103
    :cond_0
    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->holdingTime:J

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastCalcTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->holdingTime:J

    .line 105
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastCalcTime:J

    return-void
.end method

.method private resetTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastCalcTime:J

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->holdingTime:J

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;-><init>(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public setInitialDirection(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->lastDirection:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-void
.end method

.method public setOrientationChangeListener(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->listener:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    return-void
.end method

.method public setThresholdDegree(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->rotationThreshold:I

    return-void
.end method
