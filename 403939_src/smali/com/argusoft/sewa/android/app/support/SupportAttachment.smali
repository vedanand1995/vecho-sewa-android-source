.class public Lcom/argusoft/sewa/android/app/support/SupportAttachment;
.super Ljava/lang/Object;
.source "SupportAttachment.java"


# instance fields
.field public attachmentType:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public createdAt:Ljava/lang/String;

.field public durationSeconds:Ljava/lang/Integer;

.field public fileName:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public sizeBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isImage()Z
    .locals 2

    .line 20
    const-string v0, "IMAGE"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->attachmentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoice()Z
    .locals 2

    .line 16
    const-string v0, "VOICE_NOTE"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->attachmentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".m4a"

    goto :goto_0

    :cond_0
    const-string v0, ".jpg"

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "att_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->id:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
