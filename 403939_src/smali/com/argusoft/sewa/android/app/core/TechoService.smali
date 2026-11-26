.class public interface abstract Lcom/argusoft/sewa/android/app/core/TechoService;
.super Ljava/lang/Object;
.source "TechoService.java"


# virtual methods
.method public abstract checkIfDeviceIsBlockedOrDeleteDatabase()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkIfFeatureIsReleased()Z
.end method

.method public abstract checkIfOfflineAnyFormFilledForFormType(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract checkIfOfflineAnyFormFilledForLocation(Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract checkIfOfflineAnyFormFilledForMember(Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract deleteDatabaseFileFromLocal(Landroid/content/Context;)V
.end method

.method public abstract deleteQuestionAndAnswersByFormCode(Ljava/lang/String;)V
.end method

.method public abstract fetchLocationMasterData()V
.end method

.method public abstract getBaselineModuleCourseIds()Ljava/lang/String;
.end method

.method public abstract getDataForASHA()V
.end method

.method public abstract getDataForASHAFacilitator()V
.end method

.method public abstract getDataForAWW()V
.end method

.method public abstract getDataForFHSR()V
.end method

.method public abstract getDataForFHW()V
.end method

.method public abstract getDataForMO()V
.end method

.method public abstract getDataForMemberRchId()V
.end method

.method public abstract getDataForOA()V
.end method

.method public abstract getDataForRbsk()V
.end method

.method public abstract getLgdCodeWiseCoordinates()V
.end method

.method public abstract syncMergedFamiliesInformationWithServer()Ljava/lang/Boolean;
.end method
