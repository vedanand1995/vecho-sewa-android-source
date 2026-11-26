.class public Lcom/argusoft/sewa/android/app/model/LmsEventBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LmsEventBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private checksum:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private eventData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private eventType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mobileDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private recordUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private token:Ljava/lang/String;
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

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getEventData()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->eventData:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileDate()Ljava/util/Date;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->mobileDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRecordUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->recordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->checksum:Ljava/lang/String;

    return-void
.end method

.method public setEventData(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->eventData:Ljava/lang/String;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->eventType:Ljava/lang/String;

    return-void
.end method

.method public setMobileDate(Ljava/util/Date;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->mobileDate:Ljava/util/Date;

    return-void
.end method

.method public setRecordUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->recordUrl:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsEventBean{checksum=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', recordUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->recordUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->userId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobileDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->mobileDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', eventData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->eventData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
