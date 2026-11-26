.class public Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;
.super Ljava/lang/Object;
.source "RestFileMultipart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;
    }
.end annotation


# instance fields
.field private data:[B

.field private description:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private type:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->data:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->type:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->data:[B

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->type:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RestFileMultipart{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->type:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
