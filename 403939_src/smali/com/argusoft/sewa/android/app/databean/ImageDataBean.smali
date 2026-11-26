.class public Lcom/argusoft/sewa/android/app/databean/ImageDataBean;
.super Ljava/lang/Object;
.source "ImageDataBean.java"


# instance fields
.field filePath:Ljava/lang/String;

.field fileUri:Landroid/net/Uri;

.field isFromGallery:Ljava/lang/Boolean;

.field uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->uniqueId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->filePath:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->fileUri:Landroid/net/Uri;

    .line 16
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->isFromGallery:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFromGallery()Ljava/lang/Boolean;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->isFromGallery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->fileUri:Landroid/net/Uri;

    return-void
.end method

.method public setFromGallery(Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->isFromGallery:Ljava/lang/Boolean;

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->uniqueId:Ljava/lang/String;

    return-void
.end method
