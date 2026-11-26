.class public Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;
.super Ljava/lang/Object;
.source "CurrentLocationDto.java"


# instance fields
.field private entryDate:Ljava/util/Date;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->entryDate:Ljava/util/Date;

    .line 12
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->latitude:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntryDate()Ljava/util/Date;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->entryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryDate(Ljava/util/Date;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->entryDate:Ljava/util/Date;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;->longitude:Ljava/lang/String;

    return-void
.end method
