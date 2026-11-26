.class public Lcom/argusoft/sewa/android/app/model/SchoolBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "SchoolBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private englishName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private grantType:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isGurukul:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isHigherSecondarySchool:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isMadresa:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPrimarySchool:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private schoolType:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->grantType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGurukul()Ljava/lang/Boolean;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isGurukul:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHigherSecondarySchool()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isHigherSecondarySchool:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMadresa()Ljava/lang/Boolean;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isMadresa:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimarySchool()Ljava/lang/Boolean;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isPrimarySchool:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSchoolType()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->schoolType:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->englishName:Ljava/lang/String;

    return-void
.end method

.method public setGrantType(Ljava/lang/Integer;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->grantType:Ljava/lang/Integer;

    return-void
.end method

.method public setGurukul(Ljava/lang/Boolean;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isGurukul:Ljava/lang/Boolean;

    return-void
.end method

.method public setHigherSecondarySchool(Ljava/lang/Boolean;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isHigherSecondarySchool:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setMadresa(Ljava/lang/Boolean;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isMadresa:Ljava/lang/Boolean;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrimarySchool(Ljava/lang/Boolean;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->isPrimarySchool:Ljava/lang/Boolean;

    return-void
.end method

.method public setSchoolType(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SchoolBean;->schoolType:Ljava/lang/Integer;

    return-void
.end method
