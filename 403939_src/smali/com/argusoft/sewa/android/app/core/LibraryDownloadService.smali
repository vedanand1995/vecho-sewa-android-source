.class public interface abstract Lcom/argusoft/sewa/android/app/core/LibraryDownloadService;
.super Ljava/lang/Object;
.source "LibraryDownloadService.java"


# virtual methods
.method public abstract deleteFile(Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract retrieveLibraryBeansByCategory(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveNotDownloadedAndStartDownload()V
.end method
