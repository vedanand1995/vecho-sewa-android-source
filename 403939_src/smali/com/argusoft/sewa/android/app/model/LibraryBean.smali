.class public Lcom/argusoft/sewa/android/app/model/LibraryBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LibraryBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isDownloaded:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getActualId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->actualId:Ljava/lang/Long;

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->category:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->fileName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->fileType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->state:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->description:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getIsDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getIsDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->isDownloaded:Z

    .line 44
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getModifiedOn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->modifiedOn:Ljava/util/Date;

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->actualId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDownloaded()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->isDownloaded:Z

    return v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Long;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->actualId:Ljava/lang/Long;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setIsDownloaded(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->isDownloaded:Z

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LibraryBean;->state:Ljava/lang/String;

    return-void
.end method
