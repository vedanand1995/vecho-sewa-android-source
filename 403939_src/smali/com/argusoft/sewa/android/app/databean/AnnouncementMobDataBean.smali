.class public Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;
.super Ljava/lang/Object;
.source "AnnouncementMobDataBean.java"


# instance fields
.field private announcementId:Ljava/lang/Long;

.field private defaultLanguage:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isActive:Z

.field private lastUpdateOfAnnouncement:Ljava/lang/Long;

.field private modifiedOn:Ljava/util/Date;

.field private publishedOn:Ljava/lang/Long;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnouncementId()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->announcementId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateOfAnnouncement()Ljava/lang/Long;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->lastUpdateOfAnnouncement:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getPublishedOn()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->publishedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isIsActive()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->isActive:Z

    return v0
.end method

.method public setAnnouncementId(Ljava/lang/Long;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->announcementId:Ljava/lang/Long;

    return-void
.end method

.method public setDefaultLanguage(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->defaultLanguage:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->isActive:Z

    return-void
.end method

.method public setLastUpdateOfAnnouncement(Ljava/lang/Long;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->lastUpdateOfAnnouncement:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setPublishedOn(Ljava/lang/Long;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->publishedOn:Ljava/lang/Long;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->subject:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnouncementMobDataBean{subject=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', publishedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->publishedOn:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", announcementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->announcementId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLanguage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateOfAnnouncement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->lastUpdateOfAnnouncement:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
