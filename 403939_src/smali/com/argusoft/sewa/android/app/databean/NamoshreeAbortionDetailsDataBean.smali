.class public Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;
.super Ljava/lang/Object;
.source "NamoshreeAbortionDetailsDataBean.java"


# instance fields
.field private abortionCount:Ljava/lang/Integer;

.field private familyId:Ljava/lang/String;

.field private memberId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbortionCount()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->abortionCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public setAbortionCount(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->abortionCount:Ljava/lang/Integer;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NamoshreeAbortionDetailsDataBean{memberId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->memberId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", familyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->familyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', abortionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/NamoshreeAbortionDetailsDataBean;->abortionCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
