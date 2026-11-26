.class public Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;
.super Ljava/lang/Object;
.source "LibraryDataBean.java"


# instance fields
.field private actualId:Ljava/lang/Long;

.field private category:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private isDownloaded:Ljava/lang/Boolean;

.field private modifiedOn:Ljava/lang/Long;

.field private roleId:Ljava/lang/Long;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/LibraryBean;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getActualId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->actualId:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->category:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->fileName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->fileType:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getIsDownloaded()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->isDownloaded:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->state:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->description:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LibraryBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->modifiedOn:Ljava/lang/Long;

    :cond_0
    return-void
.end method


# virtual methods
.method public getActualId()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->actualId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDownloaded()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->isDownloaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getModifiedOn()Ljava/lang/Long;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->modifiedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->roleId:Ljava/lang/Long;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setActualId(Ljava/lang/Long;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->actualId:Ljava/lang/Long;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setIsDownloaded(Ljava/lang/Boolean;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->isDownloaded:Ljava/lang/Boolean;

    return-void
.end method

.method public setModifiedOn(Ljava/lang/Long;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->modifiedOn:Ljava/lang/Long;

    return-void
.end method

.method public setRoleId(Ljava/lang/Long;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->roleId:Ljava/lang/Long;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->state:Ljava/lang/String;

    return-void
.end method
