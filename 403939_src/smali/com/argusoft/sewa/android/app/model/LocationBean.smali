.class public Lcom/argusoft/sewa/android/app/model/LocationBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LocationBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualID:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private level:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lgdCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private parent:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualID()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->actualID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/Boolean;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLgdCode()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->lgdCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->parent:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualID(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->actualID:Ljava/lang/Integer;

    return-void
.end method

.method public setIsActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->level:Ljava/lang/Integer;

    return-void
.end method

.method public setLgdCode(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->lgdCode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setParent(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->parent:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationBean{actualID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->actualID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->parent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->level:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LocationBean;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
