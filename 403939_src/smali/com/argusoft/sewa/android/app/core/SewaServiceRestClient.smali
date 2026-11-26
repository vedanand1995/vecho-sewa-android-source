.class public interface abstract Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;
.super Ljava/lang/Object;
.source "SewaServiceRestClient.java"


# virtual methods
.method public abstract addFireBaseToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract assignFamilyToUser(Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract checkForDirectAuth(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract checkIfDeviceIsBlockedOrDeleteDatabase(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract checkIsMobileTimeSyncedProperly(Ljava/lang/Long;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract checkPhoneNumberAlreadyExists(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract confirmAadharDemo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract confirmAadharOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract confirmBio(Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract confirmMobileOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract confirmPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract createUsingAadhaarBiometrics(ILjava/lang/String;Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract createUsingAadhaarBiometricsV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract createUsingAadhaarOTP(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract createUsingAadhaarOTPV3(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract createUsingAadharDemographics(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract fetchAuthModesByHealthId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract generateAadhaarOTP(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract generateAadhaarOTPV3(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract generateLoginMobileOTP(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract generateUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getAbhaAccountViaAbhaAddress(Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getAbhaCardForVerificationViaAbhaAddress(Ljava/lang/Integer;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAccountProfileResponse(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getAccountProfileResponseV3(Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getCareContextMasterDetails(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getContactNumberForOtpVerification(Ljava/lang/Integer;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDataForASHAFacilitator(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetails(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetailsForAsha(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetailsForAww(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetailsForFHSR(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetailsForMO(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetailsForOA(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getDetailsForRbsk(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getFamiliesByLocationId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getFamilyToBeAssignedBySearchString(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getLocationMasterData(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getMembersByAdvanceSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getMembersOfSchool(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getNPCBMembersForSpectsApproval(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getNPCBMembersSentByCHO(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getOnlineFollowUpNPCBMembers(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getOnlineFortyPlusNPCBMembers(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getProfileAccountAbhaCard(Ljava/lang/Integer;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRBSKVisionImpairmentReferredMembers(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getRbskMoScreeningMembers(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getStates()[Lcom/argusoft/sewa/android/app/databean/StateResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getSystemConfigurationByKey(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getTokenValidity(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getUserEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getUserFormAccessDetailFromServer()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract getUserIdAndTokenFromToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract healthIdVerificationAuthInit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract initLinking(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract linkBenefitId(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract linkBenefitV3(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract lmsEventEntryFromMobileToDBeans(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsEventBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract loginWithMobileVerifiedAbha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract markAttendanceForTheDay(Ljava/lang/String;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract postUserReadyToMoveProduction(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract recordEntryFromMobileToServer(Ljava/lang/String;[Ljava/lang/String;)[Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract removeEntryForDeviceOfIMEI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract resendLoginMobileOTP(Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract resendOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveAndroidVersionFromServer()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveFamilyDataByMemberId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveMemberFromUwinOnline(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveMemberRchIds(Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveMembersOfFamilyByFamilyId(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveServerIsAlive()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveUserInProductionFromServer(Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract retrieveUserInTrainingFromServer(Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract revalidateUserToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract saveHealthIdCardV2(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract searchABHA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract searchByAbhaAddress(Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract searchUserByHealthId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract sendOtpRequest(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract sendSMSandGetHealthIdCard(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract storeAttendanceForTheDay(Ljava/lang/String;Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract storeInventoryDetailsToServer(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract storeOpdLabFormDetails(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract storeRbskScreeningDetails(Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract storeReferredLabTestDetails(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract storeReturnInventoryDetailsToServer(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract syncMergedFamiliesInformationWithServer(Ljava/util/List;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract updateOtpVerificationDate(Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract uploadUncaughtExceptionToServer(Ljava/lang/Long;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyDemography(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyLoginMobileOTP(Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyMobileProfileUserAbhaVerification(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyOtpForRecordLinking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract verifyUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method
