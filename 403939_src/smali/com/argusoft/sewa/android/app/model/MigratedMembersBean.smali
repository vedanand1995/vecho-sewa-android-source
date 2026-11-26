.class public Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MigratedMembersBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private familyMigratedFrom:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private familyMigratedTo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fromLocationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isConfirmed:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isLfu:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationMigratedFrom:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationMigratedTo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private migrationId:Ljava/lang/Long;
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

.field private outOfState:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private toLocationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getConfirmed()Ljava/lang/Boolean;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->isConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFamilyMigratedFrom()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->familyMigratedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyMigratedTo()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->familyMigratedTo:Ljava/lang/String;

    return-object v0
.end method

.method public getFromLocationId()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->fromLocationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getLfu()Ljava/lang/Boolean;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->isLfu:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationMigratedFrom()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->locationMigratedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationMigratedTo()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->locationMigratedTo:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMigrationId()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->migrationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOfState()Ljava/lang/Boolean;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->outOfState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getToLocationId()Ljava/lang/Long;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->toLocationId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setConfirmed(Ljava/lang/Boolean;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->isConfirmed:Ljava/lang/Boolean;

    return-void
.end method

.method public setFamilyMigratedFrom(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->familyMigratedFrom:Ljava/lang/String;

    return-void
.end method

.method public setFamilyMigratedTo(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->familyMigratedTo:Ljava/lang/String;

    return-void
.end method

.method public setFromLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->fromLocationId:Ljava/lang/Long;

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setLfu(Ljava/lang/Boolean;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->isLfu:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationMigratedFrom(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->locationMigratedFrom:Ljava/lang/String;

    return-void
.end method

.method public setLocationMigratedTo(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->locationMigratedTo:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setMigrationId(Ljava/lang/Long;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->migrationId:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOutOfState(Ljava/lang/Boolean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->outOfState:Ljava/lang/Boolean;

    return-void
.end method

.method public setToLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->toLocationId:Ljava/lang/Long;

    return-void
.end method
