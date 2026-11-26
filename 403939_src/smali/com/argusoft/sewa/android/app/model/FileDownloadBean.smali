.class public Lcom/argusoft/sewa/android/app/model/FileDownloadBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "FileDownloadBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private extension:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isDownloaded:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mediaId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfAttempt:Ljava/lang/Integer;
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

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->mediaId:Ljava/lang/Long;

    .line 25
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->fileName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->extension:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->noOfAttempt:Ljava/lang/Integer;

    .line 28
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->isDownloaded:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getDownloaded()Ljava/lang/Boolean;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->isDownloaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/Long;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->mediaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getNoOfAttempt()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->noOfAttempt:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDownloaded(Ljava/lang/Boolean;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->isDownloaded:Ljava/lang/Boolean;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/Long;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->mediaId:Ljava/lang/Long;

    return-void
.end method

.method public setNoOfAttempt(Ljava/lang/Integer;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->noOfAttempt:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileDownloadBean{mediaId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->mediaId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extension=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', noOfAttempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->noOfAttempt:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->isDownloaded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
