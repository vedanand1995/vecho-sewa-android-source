.class public interface abstract Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;
.super Ljava/lang/Object;
.source "HealthInfrastructureService.java"


# virtual methods
.method public abstract getHealthInfraByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;
.end method

.method public abstract retrieveDistinctHealthInfraType()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveHealthInfraByLocationId(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveHealthInfraBySearch(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveHealthInfraByTypeAndLocations(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveSmartExceptionByHospitalInfraId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveSmartMasterByHospitalInfraId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            ">;"
        }
    .end annotation
.end method
