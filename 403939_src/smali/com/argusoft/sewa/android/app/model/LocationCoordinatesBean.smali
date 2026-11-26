.class public Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LocationCoordinatesBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private coordinates:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lgdCode:Ljava/lang/String;
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

    .line 33
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCoordinates()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->coordinates:Ljava/lang/String;

    return-object v0
.end method

.method public getLgdCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->lgdCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCoordinates(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->coordinates:Ljava/lang/String;

    return-void
.end method

.method public setLgdCode(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->lgdCode:Ljava/lang/String;

    return-void
.end method
