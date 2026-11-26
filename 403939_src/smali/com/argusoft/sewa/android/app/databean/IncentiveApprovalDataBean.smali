.class public Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;
.super Ljava/lang/Object;
.source "IncentiveApprovalDataBean.java"


# instance fields
.field private comments:Ljava/lang/String;

.field private detailsDataBean:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

.field private incentiveMonthId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComments()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsDataBean()Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;->detailsDataBean:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    return-object v0
.end method

.method public getIncentiveMonthId()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;->incentiveMonthId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;->comments:Ljava/lang/String;

    return-void
.end method

.method public setDetailsDataBean(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;->detailsDataBean:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    return-void
.end method

.method public setIncentiveMonthId(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveApprovalDataBean;->incentiveMonthId:Ljava/lang/Integer;

    return-void
.end method
