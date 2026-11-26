.class public Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MemberPregnancyStatusBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private ancDate:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private bp:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private calciumTablets:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private faTablets:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private haemoglobin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ifaTablets:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private immunisation:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nightBlindness:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private regDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private urineTest:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private weight:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


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

    .line 159
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAncDate()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->ancDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBp()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->bp:Ljava/lang/String;

    return-object v0
.end method

.method public getCalciumTablets()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->calciumTablets:Ljava/lang/String;

    return-object v0
.end method

.method public getFaTablets()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->faTablets:Ljava/lang/String;

    return-object v0
.end method

.method public getHaemoglobin()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->haemoglobin:Ljava/lang/String;

    return-object v0
.end method

.method public getIfaTablets()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->ifaTablets:Ljava/lang/String;

    return-object v0
.end method

.method public getImmunisation()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->immunisation:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNightBlindness()Ljava/lang/Boolean;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->nightBlindness:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRegDate()Ljava/util/Date;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->regDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUrineTest()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->urineTest:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAncDate(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->ancDate:Ljava/lang/String;

    return-void
.end method

.method public setBp(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->bp:Ljava/lang/String;

    return-void
.end method

.method public setCalciumTablets(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->calciumTablets:Ljava/lang/String;

    return-void
.end method

.method public setFaTablets(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->faTablets:Ljava/lang/String;

    return-void
.end method

.method public setHaemoglobin(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->haemoglobin:Ljava/lang/String;

    return-void
.end method

.method public setIfaTablets(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->ifaTablets:Ljava/lang/String;

    return-void
.end method

.method public setImmunisation(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->immunisation:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNightBlindness(Ljava/lang/Boolean;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->nightBlindness:Ljava/lang/Boolean;

    return-void
.end method

.method public setRegDate(Ljava/util/Date;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->regDate:Ljava/util/Date;

    return-void
.end method

.method public setUrineTest(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->urineTest:Ljava/lang/String;

    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->weight:Ljava/lang/String;

    return-void
.end method
