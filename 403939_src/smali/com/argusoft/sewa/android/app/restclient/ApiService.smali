.class public interface abstract Lcom/argusoft/sewa/android/app/restclient/ApiService;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract addFireBaseToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/firebaseToken"
    .end annotation
.end method

.method public abstract assignFamilyToUser(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techopostassignfamilytouser"
    .end annotation
.end method

.method public abstract checkForDirectAuth(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/check-for-direct-auth-mode"
    .end annotation
.end method

.method public abstract checkIfDeviceIsBlockedOrDeleteDatabase(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getimeiblockedordeletedatabase"
    .end annotation
.end method

.method public abstract checkIsMobileTimeSyncedProperly(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/checkmobiletimesyncstatus"
    .end annotation
.end method

.method public abstract checkPhoneNumberExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "phone"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/checkPhoneNumberExists"
    .end annotation
.end method

.method public abstract confirmAadharDemo(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/confirm-aadhar-demo"
    .end annotation
.end method

.method public abstract confirmAadharOtp(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/confirm-aadhar-otp"
    .end annotation
.end method

.method public abstract confirmBio(Ljava/util/Map;Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/confirm-bio"
    .end annotation
.end method

.method public abstract confirmMobileOtp(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/confirm-mobile-otp"
    .end annotation
.end method

.method public abstract confirmPassword(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/confirm-password"
    .end annotation
.end method

.method public abstract createUsingAadhaarBiometrics(Ljava/util/Map;Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/CreateHidAadharBioRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/create-using-aadhaar-bio"
    .end annotation
.end method

.method public abstract createUsingAadhaarBiometricsV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/create-using-aadhaar-bio-v3"
    .end annotation
.end method

.method public abstract createUsingAadhaarOTP(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/create-using-aadhar-otp"
    .end annotation
.end method

.method public abstract createUsingAadhaarOtpV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/create-using-aadhaar-otp-v3"
    .end annotation
.end method

.method public abstract createUsingAadharDemographics(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/create-using-aadhar-demo"
    .end annotation
.end method

.method public abstract executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdata"
    .end annotation
.end method

.method public abstract fetchAuthModesByHealthId(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/fetch-auth-modes-by-healthid"
    .end annotation
.end method

.method public abstract generateAadhaarOTP(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/generate-aadhar-otp"
    .end annotation
.end method

.method public abstract generateAadhaarOTPV3(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/generate-aadhaar-otp-v3"
    .end annotation
.end method

.method public abstract generateLoginMobileOTP(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/generate-mobile-otp-for-login"
    .end annotation
.end method

.method public abstract generateOtpForABHAVerificationV3(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/generate-otp-for-abha-verification-v3"
    .end annotation
.end method

.method public abstract generateUpdateMobileOTP(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/change-phone-generate-otp"
    .end annotation
.end method

.method public abstract getAbhaCardForVerificationViaAbhaAddress(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/get-abha-card-verification-via-abha-address"
    .end annotation
.end method

.method public abstract getAbhaProfileForVerificationViaAbhaAddress(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/get-abha-profile-verification-via-abha-address"
    .end annotation
.end method

.method public abstract getAccountProfileResponse(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/get-account-details"
    .end annotation
.end method

.method public abstract getAppVersion()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/retrieveAndroidVersion"
    .end annotation
.end method

.method public abstract getCareContextMasterDetails(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/get-all-health-ids-by-member-id"
    .end annotation
.end method

.method public abstract getContactNumberForOtpVerification(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getContactNumberForOtpVerification"
    .end annotation
.end method

.method public abstract getDataForASHAFacilitator(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsashafacilitator"
    .end annotation
.end method

.method public abstract getDetails(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getDetails"
    .end annotation
.end method

.method public abstract getDetailsForAsha(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsasha"
    .end annotation
.end method

.method public abstract getDetailsForAww(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsaww"
    .end annotation
.end method

.method public abstract getDetailsForFHSR(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsfhsr"
    .end annotation
.end method

.method public abstract getDetailsForMO(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsfhsr"
    .end annotation
.end method

.method public abstract getDetailsForOA(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsoa"
    .end annotation
.end method

.method public abstract getDetailsForRbsk(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getdetailsrbsk"
    .end annotation
.end method

.method public abstract getFamiliesByLocationId(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getfamiliesbylocation"
    .end annotation
.end method

.method public abstract getFamilyToBeAssignedBySearchString(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techogetfamilybysearchstring"
    .end annotation
.end method

.method public abstract getLocationMasterData(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/getLocationMasterData"
    .end annotation
.end method

.method public abstract getMembersByAdvanceSearch(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getMembersByAdvanceSearch"
    .end annotation
.end method

.method public abstract getMembersOfSchool(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getMembersOfSchool"
    .end annotation
.end method

.method public abstract getNPCBMembersForSpectsApproval(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            value = "locationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getNPCBMembersForSpectsApproval"
    .end annotation
.end method

.method public abstract getNPCBMembersSentByCHO(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            value = "locationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getNPCBMembersSentByCHO"
    .end annotation
.end method

.method public abstract getOnlineFollowUpNPCBMembers(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            value = "locationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getOnlineFollowUpNPCBMembers"
    .end annotation
.end method

.method public abstract getOnlineFortyPlusNPCBMembers(Ljava/util/List;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            value = "locationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getOnlineFortyPlusNPCBMembers"
    .end annotation
.end method

.method public abstract getProfileAccountAbhaCard(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/get-profile-account-abha-card"
    .end annotation
.end method

.method public abstract getProfileAccountDetails(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/get-profile-account-abha-details"
    .end annotation
.end method

.method public abstract getRBSKVisionImpairmentReferredMembers(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getRBSKVisionImpairmentReferredMembers"
    .end annotation
.end method

.method public abstract getRbskMoScreeningMembers(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/rbskmoscreeningdetails"
    .end annotation
.end method

.method public abstract getStates(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "[",
            "Lcom/argusoft/sewa/android/app/databean/StateResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/ndhm/healthid/states"
    .end annotation
.end method

.method public abstract getSystemConfigurationByKey(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/systemConfiguration"
    .end annotation
.end method

.method public abstract getTokenValidity(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techogettokenvalidity"
    .end annotation
.end method

.method public abstract getUser(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techovalidateusernew"
    .end annotation
.end method

.method public abstract getUserEncrypted(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/validateuserenc"
    .end annotation
.end method

.method public abstract getUserFormAccessDetailFromServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techogetuserformaccessdetail"
    .end annotation
.end method

.method public abstract getUserIdAndTokenFromToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techogetuserfromtoken"
    .end annotation
.end method

.method public abstract healthIdVerificationAuthInit(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/authentication"
    .end annotation
.end method

.method public abstract initLinking(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/init-linking-care-context"
    .end annotation
.end method

.method public abstract linkBenefitId(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/link-benefit"
    .end annotation
.end method

.method public abstract linkBenefitIdV3(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/link-benefit-v3"
    .end annotation
.end method

.method public abstract lmsEventEntryFromMobileToDBeans(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/lmsevententry"
    .end annotation
.end method

.method public abstract loginWithMobileVerifiedAbha(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/login-with-mobile-verified-abha"
    .end annotation
.end method

.method public abstract markAttendanceForTheDay(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/markattendance"
    .end annotation
.end method

.method public abstract postUserReadyToMoveProduction(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techopostuserreadytomoveproduction"
    .end annotation
.end method

.method public abstract profileLoginVerifyUser(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/verify-mobile-profile-user-abha-verification"
    .end annotation
.end method

.method public abstract recordEntryFromMobileToServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "[",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techorecordentryfrommobiletodbservernew"
    .end annotation
.end method

.method public abstract removeEntryForDeviceOfIMEI(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/removeimeiblockedentry"
    .end annotation
.end method

.method public abstract resendLoginMobileOTP(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/resend-mobile-otp-for-login"
    .end annotation
.end method

.method public abstract resendOtp(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/resend-otp"
    .end annotation
.end method

.method public abstract retrieveImtechoFamilyDataByMemberId(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/retrieveFamilyDataBeanByMemberId"
    .end annotation
.end method

.method public abstract retrieveMemberFromUwin(Lcom/argusoft/sewa/android/app/databean/SearchBeneficiariesRequestDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/SearchBeneficiariesRequestDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/SearchBeneficiariesRequestDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/fetchUwinMember"
    .end annotation
.end method

.method public abstract retrieveMemberRchIds(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/retrieveMemberRchIds"
    .end annotation
.end method

.method public abstract retrieveMembersForOnlineSearch(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/retrieveMembersForOnlineSearch"
    .end annotation
.end method

.method public abstract retrieveMembersOfFamilyByFamilyId(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/retrieveMembersOfFamilyByFamilyId"
    .end annotation
.end method

.method public abstract retrieveServerIsAlive()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/getserverisalive"
    .end annotation
.end method

.method public abstract retrieveUserInProductionFromServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techoisuserinproduction"
    .end annotation
.end method

.method public abstract revalidateUserToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techorevalidatetoken"
    .end annotation
.end method

.method public abstract saveHealthIdCardV2(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/heath-id-card-v2"
    .end annotation
.end method

.method public abstract searchABHA(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/search-abha"
    .end annotation
.end method

.method public abstract searchByAbhaAddress(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/search-by-abha-address-v3"
    .end annotation
.end method

.method public abstract searchUserByHealthId(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/search"
    .end annotation
.end method

.method public abstract sendOtpRequest(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/generateotptecho"
    .end annotation
.end method

.method public abstract sendSMSandGetHealthIdCard(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/send-sms-and-get-health-id-card-v3"
    .end annotation
.end method

.method public abstract storeAttendanceForTheDay(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/storeattendance"
    .end annotation
.end method

.method public abstract storeInventoryDetailsToServer(Ljava/util/Map;Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/storeRiInventory"
    .end annotation
.end method

.method public abstract storeOpdLabFormDetails(Lcom/argusoft/sewa/android/app/databean/LabTestRequest;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/LabTestRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/LabTestRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/storeOpdLabTest"
    .end annotation
.end method

.method public abstract storeRbskScreeningDetails(Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/rbskscreeningdetails"
    .end annotation
.end method

.method public abstract storeReferredLabTestDetails(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/storeReferredLabTest"
    .end annotation
.end method

.method public abstract storeReturnInventoryDetailsToServer(Ljava/util/Map;Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/storeRiReturnInventory"
    .end annotation
.end method

.method public abstract supportAttachmentContent(JJ)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "attachmentId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/support/tickets/{id}/attachments/{attachmentId}/content"
    .end annotation

    .annotation runtime Lretrofit2/http/Streaming;
    .end annotation
.end method

.method public abstract supportAttachments(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/support/SupportAttachment;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/support/tickets/{id}/attachments"
    .end annotation
.end method

.method public abstract supportComments(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/support/SupportComment;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/support/tickets/{id}/comments"
    .end annotation
.end method

.method public abstract supportFixed(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/support/tickets/{id}/fixed"
    .end annotation
.end method

.method public abstract supportMine()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/support/tickets"
    .end annotation
.end method

.method public abstract supportNotFixed(JLjava/util/Map;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/support/tickets/{id}/not-fixed"
    .end annotation
.end method

.method public abstract supportRaise(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Ljava/util/List;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Idempotency-Key"
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "topic"
        .end annotation
    .end param
    .param p3    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "description"
        .end annotation
    .end param
    .param p4    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "diagnostics"
        .end annotation
    .end param
    .param p5    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/MultipartBody$Part;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/support/tickets"
    .end annotation
.end method

.method public abstract supportReply(JLjava/util/Map;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/support/SupportComment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/support/tickets/{id}/comments"
    .end annotation
.end method

.method public abstract supportTicket(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/mobile/support/tickets/{id}"
    .end annotation
.end method

.method public abstract supportVoiceReply(JLokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/support/SupportComment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/support/tickets/{id}/voice"
    .end annotation
.end method

.method public abstract syncMergedFamiliesInformationWithServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/techopostmergedfamiliesinformation"
    .end annotation
.end method

.method public abstract updateLanguagePreference(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/user/changeLanguage"
    .end annotation
.end method

.method public abstract updateOtpVerificationDate(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/updateOtpVerificationDate"
    .end annotation
.end method

.method public abstract uploadMediaToServer(Lokhttp3/MultipartBody$Part;Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Lretrofit2/Call;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p2    # Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;
        .annotation runtime Lretrofit2/http/Part;
            value = "uploadFileDataBean"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/uploadMedia"
    .end annotation
.end method

.method public abstract uploadUncaughtExceptionToServer(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/mobile/techouploaduncaughtexceptiondetail"
    .end annotation
.end method

.method public abstract verifyBiometricForAbhaVerificationV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/verify-biometric-for-abha-verification-v3"
    .end annotation
.end method

.method public abstract verifyDemography(Ljava/util/Map;Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/verify-demography-care-context"
    .end annotation
.end method

.method public abstract verifyLoginMobileOTP(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userMobileToken"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/verify-mobile-otp-for-login"
    .end annotation
.end method

.method public abstract verifyOtp(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lretrofit2/Call;
    .param p1    # Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/verifyotptecho"
    .end annotation
.end method

.method public abstract verifyOtpForAbhaVerificationV3(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/verify-otp-for-abha-verification-v3"
    .end annotation
.end method

.method public abstract verifyOtpForRecordLinking(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/verify-otp-care-context"
    .end annotation
.end method

.method public abstract verifyUpdateMobileOTP(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/mobile/ndhm/healthid/change-phone-otp-verify"
    .end annotation
.end method
