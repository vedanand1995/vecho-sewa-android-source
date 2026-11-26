.class public Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "DailyPresenceReport.java"


# instance fields
.field private attendanceId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private endTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locations:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttendanceId()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->attendanceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocations()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->locations:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAttendanceId(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->attendanceId:Ljava/lang/Integer;

    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->endTime:Ljava/util/Date;

    return-void
.end method

.method public setLocations(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->locations:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->startTime:Ljava/util/Date;

    return-void
.end method
