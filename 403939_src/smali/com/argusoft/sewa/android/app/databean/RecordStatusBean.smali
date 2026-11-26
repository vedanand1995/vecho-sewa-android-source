.class public Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;
.super Ljava/lang/Object;
.source "RecordStatusBean.java"


# instance fields
.field private checksum:Ljava/lang/String;

.field private generatedId:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->generatedId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->checksum:Ljava/lang/String;

    return-void
.end method

.method public setGeneratedId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->generatedId:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordStatusBean{checksum=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', generatedId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->generatedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
