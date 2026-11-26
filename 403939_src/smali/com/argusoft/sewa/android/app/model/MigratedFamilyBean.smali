.class public Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MigratedFamilyBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private familyId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private familyIdString:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fromLocationId:Ljava/lang/Integer;
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

.field private isSplitFamily:Ljava/lang/Boolean;
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

.field private migrationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private outOfState:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sFamilyId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sFamilyIdString:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private splitMembersDetail:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private toLocationId:Ljava/lang/Integer;
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
.method public getConfirmed()Ljava/lang/Boolean;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->isConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->familyId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFamilyIdString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->familyIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getFromLocationId()Ljava/lang/Integer;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->fromLocationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLfu()Ljava/lang/Boolean;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->isLfu:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationMigratedFrom()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->locationMigratedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationMigratedTo()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->locationMigratedTo:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrationId()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->migrationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getOutOfState()Ljava/lang/Boolean;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->outOfState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSplitFamily()Ljava/lang/Boolean;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->isSplitFamily:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSplitMembersDetail()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->splitMembersDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getToLocationId()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->toLocationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getsFamilyId()Ljava/lang/Integer;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->sFamilyId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getsFamilyIdString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->sFamilyIdString:Ljava/lang/String;

    return-object v0
.end method

.method public setConfirmed(Ljava/lang/Boolean;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->isConfirmed:Ljava/lang/Boolean;

    return-void
.end method

.method public setFamilyId(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->familyId:Ljava/lang/Integer;

    return-void
.end method

.method public setFamilyIdString(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->familyIdString:Ljava/lang/String;

    return-void
.end method

.method public setFromLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->fromLocationId:Ljava/lang/Integer;

    return-void
.end method

.method public setLfu(Ljava/lang/Boolean;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->isLfu:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationMigratedFrom(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->locationMigratedFrom:Ljava/lang/String;

    return-void
.end method

.method public setLocationMigratedTo(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->locationMigratedTo:Ljava/lang/String;

    return-void
.end method

.method public setMigrationId(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->migrationId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setOutOfState(Ljava/lang/Boolean;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->outOfState:Ljava/lang/Boolean;

    return-void
.end method

.method public setSplitFamily(Ljava/lang/Boolean;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->isSplitFamily:Ljava/lang/Boolean;

    return-void
.end method

.method public setSplitMembersDetail(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->splitMembersDetail:Ljava/lang/String;

    return-void
.end method

.method public setToLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->toLocationId:Ljava/lang/Integer;

    return-void
.end method

.method public setsFamilyId(Ljava/lang/Integer;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->sFamilyId:Ljava/lang/Integer;

    return-void
.end method

.method public setsFamilyIdString(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->sFamilyIdString:Ljava/lang/String;

    return-void
.end method
