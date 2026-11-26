.class public Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "IncentiveMonthlyDetailsBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean$Status;
    }
.end annotation


# instance fields
.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private comments:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private groupId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private incentiveDetails:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private incentiveMonth:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ironSyrupCount:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private remarks:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->actualId:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->userId:Ljava/lang/Integer;

    .line 44
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->incentiveMonth:Ljava/util/Date;

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->status:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getRemarks()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->remarks:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->comments:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getGroupId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->groupId:Ljava/lang/Integer;

    .line 49
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->modifiedOn:Ljava/util/Date;

    .line 50
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIronSyrupCount()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->ironSyrupCount:Ljava/lang/Long;

    .line 51
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->incentiveDetails:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/Integer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->groupId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncentiveDetails()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->incentiveDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getIncentiveMonth()Ljava/util/Date;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->incentiveMonth:Ljava/util/Date;

    return-object v0
.end method

.method public getIronSyrupCount()Ljava/lang/Long;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->ironSyrupCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->comments:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/Integer;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->groupId:Ljava/lang/Integer;

    return-void
.end method

.method public setIncentiveDetails(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->incentiveDetails:Ljava/lang/String;

    return-void
.end method

.method public setIncentiveMonth(Ljava/util/Date;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->incentiveMonth:Ljava/util/Date;

    return-void
.end method

.method public setIronSyrupCount(Ljava/lang/Long;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->ironSyrupCount:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->remarks:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->userId:Ljava/lang/Integer;

    return-void
.end method
