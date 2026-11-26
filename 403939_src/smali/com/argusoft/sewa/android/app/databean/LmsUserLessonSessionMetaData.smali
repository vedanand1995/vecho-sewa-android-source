.class public Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;
.super Ljava/lang/Object;
.source "LmsUserLessonSessionMetaData.java"


# instance fields
.field private endDate:Ljava/lang/Long;

.field private startDate:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/lang/Long;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->endDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/Long;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->startDate:Ljava/lang/Long;

    return-object v0
.end method

.method public setEndDate(Ljava/lang/Long;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->endDate:Ljava/lang/Long;

    return-void
.end method

.method public setStartDate(Ljava/lang/Long;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->startDate:Ljava/lang/Long;

    return-void
.end method
