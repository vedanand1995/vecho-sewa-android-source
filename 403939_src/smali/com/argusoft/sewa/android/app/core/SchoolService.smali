.class public interface abstract Lcom/argusoft/sewa/android/app/core/SchoolService;
.super Ljava/lang/Object;
.source "SchoolService.java"


# virtual methods
.method public abstract retrieveSchoolsListByLocationId(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveSchoolsListByLocationIds(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveSchoolsListBySearch(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;"
        }
    .end annotation
.end method
