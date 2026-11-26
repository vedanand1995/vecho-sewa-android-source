.class public Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;
.super Ljava/lang/Object;
.source "IncentiveDetailDataBean.java"


# instance fields
.field private amount:Ljava/lang/Integer;

.field private approvedAmount:I

.field private comment:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private incentiveDate:Ljava/lang/Long;

.field private incentiveGroup:Ljava/lang/String;

.field private incentiveId:Ljava/lang/Integer;

.field private incentiveMemberDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private isAbsent:Ljava/lang/Boolean;

.field private location:Ljava/lang/String;

.field private mamtaCount:I

.field private mamtaDiwasDate:Ljava/lang/Long;

.field private mamtaLocation:Ljava/lang/String;

.field private order:Ljava/lang/Short;

.field private status:Ljava/lang/String;

.field private val:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->isAbsent:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Integer;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->amount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApprovedAmount()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->approvedAmount:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncentiveDate()Ljava/lang/Long;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getIncentiveGroup()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getIncentiveId()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncentiveMemberDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveMemberDetails:Ljava/util/List;

    return-object v0
.end method

.method public getIsAbsent()Ljava/lang/Boolean;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->isAbsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMamtaCount()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->mamtaCount:I

    return v0
.end method

.method public getMamtaDiwasDate()Ljava/lang/Long;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->mamtaDiwasDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getMamtaLocation()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->mamtaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/Short;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->order:Ljava/lang/Short;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVal()Ljava/lang/Integer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->val:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->amount:Ljava/lang/Integer;

    return-void
.end method

.method public setApprovedAmount(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->approvedAmount:I

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIncentiveDate(Ljava/lang/Long;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveDate:Ljava/lang/Long;

    return-void
.end method

.method public setIncentiveGroup(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveGroup:Ljava/lang/String;

    return-void
.end method

.method public setIncentiveId(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveId:Ljava/lang/Integer;

    return-void
.end method

.method public setIncentiveMemberDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->incentiveMemberDetails:Ljava/util/List;

    return-void
.end method

.method public setIsAbsent(Ljava/lang/Boolean;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->isAbsent:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setMamtaCount(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->mamtaCount:I

    return-void
.end method

.method public setMamtaDiwasDate(Ljava/lang/Long;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->mamtaDiwasDate:Ljava/lang/Long;

    return-void
.end method

.method public setMamtaLocation(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->mamtaLocation:Ljava/lang/String;

    return-void
.end method

.method public setOrder(Ljava/lang/Short;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->order:Ljava/lang/Short;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setVal(Ljava/lang/Integer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->val:Ljava/lang/Integer;

    return-void
.end method
