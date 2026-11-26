.class public Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "StoreAnswerBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private answer:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private answerEntity:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private checksum:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private custumType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dateOfMobile:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private formFilledUpTime:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private morbidityAnswer:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private notificationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private recordUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private relatedInstance:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 21
    const-string v0, "-1"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 21
    const-string v0, "-1"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerEntity()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answerEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getCustumType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfMobile()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->dateOfMobile:Ljava/lang/Long;

    return-object v0
.end method

.method public getFormFilledUpTime()Ljava/lang/Long;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->formFilledUpTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Long;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->locationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMorbidityAnswer()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecordUrl()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->recordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedInstance()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->relatedInstance:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public pack()Ljava/lang/String;
    .locals 6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->checksum:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->dateOfMobile:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answerEntity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    const-string v3, "-1"

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->relatedInstance:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->formFilledUpTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->notificationId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 227
    :cond_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 235
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answer:Ljava/lang/String;

    return-void
.end method

.method public setAnswerEntity(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answerEntity:Ljava/lang/String;

    return-void
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->checksum:Ljava/lang/String;

    return-void
.end method

.method public setCustumType(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    return-void
.end method

.method public setDateOfMobile(Ljava/lang/Long;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->dateOfMobile:Ljava/lang/Long;

    return-void
.end method

.method public setFormFilledUpTime(Ljava/lang/Long;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->formFilledUpTime:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->locationId:Ljava/lang/Long;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setMorbidityAnswer(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(Ljava/lang/Long;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->notificationId:Ljava/lang/Long;

    return-void
.end method

.method public setRecordUrl(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->recordUrl:Ljava/lang/String;

    return-void
.end method

.method public setRelatedInstance(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->relatedInstance:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->userId:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StoreAnswerBean{checksum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dateOfMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->dateOfMobile:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", answerEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answerEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", custumType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->custumType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->relatedInstance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formFilledUpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->formFilledUpTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", morbidityAnswer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->morbidityAnswer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recordUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->recordUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
