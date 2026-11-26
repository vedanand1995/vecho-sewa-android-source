.class public Lcom/argusoft/sewa/android/app/model/VersionBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "VersionBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VersionBean{key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/VersionBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
