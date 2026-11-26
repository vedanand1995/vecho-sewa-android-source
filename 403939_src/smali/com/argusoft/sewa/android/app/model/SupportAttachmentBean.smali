.class public Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "SupportAttachmentBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field public attachmentType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public durationSeconds:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public fileName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public localPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public ownerUserId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public serverId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sizeBytes:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public ticketLocalId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public isImage()Z
    .locals 2

    .line 46
    const-string v0, "IMAGE"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->attachmentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoice()Z
    .locals 2

    .line 42
    const-string v0, "VOICE_NOTE"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->attachmentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->id:Ljava/lang/Integer;

    return-void
.end method
