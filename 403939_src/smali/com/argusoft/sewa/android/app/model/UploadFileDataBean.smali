.class public Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "UploadFileDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private checkSum:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private formType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfAttemp:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private parentStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pregnancyRegistrationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private recordUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->formType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNoOfAttemp()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->noOfAttemp:I

    return v0
.end method

.method public getParentStatus()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->parentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPregnancyRegistrationId()Ljava/lang/Integer;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->pregnancyRegistrationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecordUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->recordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public pack()Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->checkSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->formType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->parentStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setFormType(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->formType:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setNoOfAttemp(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->noOfAttemp:I

    return-void
.end method

.method public setParentStatus(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->parentStatus:Ljava/lang/String;

    return-void
.end method

.method public setPregnancyRegistrationId(Ljava/lang/Integer;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->pregnancyRegistrationId:Ljava/lang/Integer;

    return-void
.end method

.method public setRecordUrl(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->recordUrl:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UploadFileDataBean{checkSum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->checkSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->parentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpack(Ljava/lang/String;)V
    .locals 2

    .line 213
    const-string v0, "|"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 215
    array-length v0, p1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 216
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->checkSum:Ljava/lang/String;

    const/4 v0, 0x1

    .line 217
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->formType:Ljava/lang/String;

    const/4 v0, 0x2

    .line 218
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 219
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->fileName:Ljava/lang/String;

    const/4 v0, 0x4

    .line 220
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->userName:Ljava/lang/String;

    const/4 v0, 0x5

    .line 221
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->parentStatus:Ljava/lang/String;

    .line 222
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->status:Ljava/lang/String;

    :cond_0
    return-void
.end method
