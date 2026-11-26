.class public Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "RchVillageProfileBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private rchVillageProfileDto:Ljava/lang/String;

.field private villageId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRchVillageProfileDto()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->rchVillageProfileDto:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageId()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->villageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setRchVillageProfileDto(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->rchVillageProfileDto:Ljava/lang/String;

    return-void
.end method

.method public setVillageId(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->villageId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RchVillageProfileBean{\nvillageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->villageId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nrchVillageProfileDto=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->rchVillageProfileDto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
