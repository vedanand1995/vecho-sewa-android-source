.class public Lcom/argusoft/sewa/android/app/model/AnnouncementBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "AnnouncementBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private announcementId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private defaultLanguage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isDownloaded:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPlayedAnnouncement:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private publishedOn:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private subject:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->announcementId:Ljava/lang/Long;

    .line 42
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->subject:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->publishedOn:Ljava/lang/Long;

    .line 44
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    if-nez v1, :cond_1

    return v0

    .line 123
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->announcementId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->announcementId:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnouncementId()Ljava/lang/Long;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->announcementId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDownloaded()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->isDownloaded:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlayedAnnouncement()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->isPlayedAnnouncement:I

    return v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getPublishedOn()Ljava/lang/Long;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->publishedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAnnouncementId(Ljava/lang/Long;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->announcementId:Ljava/lang/Long;

    return-void
.end method

.method public setDefaultLanguage(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->defaultLanguage:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setIsDownloaded(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->isDownloaded:Ljava/lang/String;

    return-void
.end method

.method public setIsPlayedAnnouncement(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->isPlayedAnnouncement:I

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setPublishedOn(Ljava/lang/Long;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->publishedOn:Ljava/lang/Long;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->subject:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnouncementBean{announcementId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->announcementId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publishedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->publishedOn:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->isDownloaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlayedAnnouncement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->isPlayedAnnouncement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
