.class public Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;
.super Ljava/lang/Object;
.source "IncentiveMonthlyDetailsDataBean.java"


# instance fields
.field private comments:Ljava/lang/String;

.field private groupId:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private incentiveDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private incentiveMonth:Ljava/util/Date;

.field private ironSyrupCount:Ljava/lang/Long;

.field private ironSyrupDtoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private listOfIncentives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;",
            ">;>;"
        }
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;

.field private remarks:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private userId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->id:Ljava/lang/Integer;

    .line 32
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->userId:Ljava/lang/Integer;

    .line 33
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->incentiveMonth:Ljava/util/Date;

    .line 34
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->status:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getRemarks()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->remarks:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->comments:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getGroupId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->groupId:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->modifiedOn:Ljava/util/Date;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIronSyrupCount()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->ironSyrupCount:Ljava/lang/Long;

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean$1;-><init>(Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;)V

    .line 42
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->incentiveDetails:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public getComments()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->groupId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncentiveDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->incentiveDetails:Ljava/util/List;

    return-object v0
.end method

.method public getIncentiveMonth()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->incentiveMonth:Ljava/util/Date;

    return-object v0
.end method

.method public getIronSyrupCount()Ljava/lang/Long;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->ironSyrupCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getIronSyrupDtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->ironSyrupDtoList:Ljava/util/List;

    return-object v0
.end method

.method public getListOfIncentives()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->listOfIncentives:Ljava/util/Map;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->comments:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/Integer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->groupId:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIncentiveDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->incentiveDetails:Ljava/util/List;

    return-void
.end method

.method public setIncentiveMonth(Ljava/util/Date;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->incentiveMonth:Ljava/util/Date;

    return-void
.end method

.method public setIronSyrupCount(Ljava/lang/Long;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->ironSyrupCount:Ljava/lang/Long;

    return-void
.end method

.method public setIronSyrupDtoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->ironSyrupDtoList:Ljava/util/List;

    return-void
.end method

.method public setListOfIncentives(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;",
            ">;>;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->listOfIncentives:Ljava/util/Map;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->remarks:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->userId:Ljava/lang/Integer;

    return-void
.end method
