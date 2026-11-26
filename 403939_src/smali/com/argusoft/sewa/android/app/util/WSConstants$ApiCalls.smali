.class public Lcom/argusoft/sewa/android/app/util/WSConstants$ApiCalls;
.super Ljava/lang/Object;
.source "WSConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/util/WSConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiCalls"
.end annotation


# static fields
.field public static final GET_ANDROID_VERSION:Ljava/lang/String; = "retrieveAndroidVersion"

.field public static final GET_DETAILS_ASHA:Ljava/lang/String; = "getdetailsasha"

.field public static final GET_DETAILS_AWW:Ljava/lang/String; = "getdetailsaww"

.field public static final GET_DETAILS_FHSR:Ljava/lang/String; = "getdetailsfhsr"

.field public static final GET_DETAILS_FHW:Ljava/lang/String; = "getDetails"

.field public static final GET_DETAILS_MO:Ljava/lang/String; = "getdetailsmo"

.field public static final GET_DETAILS_RBSK:Ljava/lang/String; = "getdetailsrbsk"

.field public static final GET_FAMILIES_BY_LOCATION:Ljava/lang/String; = "getfamiliesbylocation"

.field public static final GET_FONT_SIZE:Ljava/lang/String; = "retrieveFontSize"

.field public static final GET_SERVER_IS_ALIVE:Ljava/lang/String; = "getserverisalive"

.field public static final NDHM_CHECK_FOR_DIRECT_AUTH_MODE:Ljava/lang/String; = "check-for-direct-auth-mode"

.field public static final NDHM_FETCH_AUTH_MEDOS_BY_HEALTH_ID:Ljava/lang/String; = "fetch-auth-modes-by-healthid"

.field public static final NDHM_GET_HEALTH_ID_BY_MEMBER_ID:Ljava/lang/String; = "get-all-health-ids-by-member-id"

.field public static final NDHM_INIT_LINKING:Ljava/lang/String; = "init-linking-care-context"

.field public static final NDHM_VERIFY_DEMOGRAPHY_FOR_RECORD_LINKING:Ljava/lang/String; = "verify-demography-care-context"

.field public static final NDHM_VERIFY_OTP_FOR_RECORD_LINKING:Ljava/lang/String; = "verify-otp-care-context"

.field public static final TECHO_CHECK_MOBILE_TIME_SYNC_STATUS:Ljava/lang/String; = "checkmobiletimesyncstatus"

.field public static final TECHO_DOWNLOAD_APPLICATION:Ljava/lang/String; = "downloadapk"

.field public static final TECHO_FIREBASE_TOKEN:Ljava/lang/String; = "firebaseToken"

.field public static final TECHO_GET_DATA_FROM_QUERY_MASTER:Ljava/lang/String; = "getdata"

.field public static final TECHO_GET_FAMILY_TO_BE_ASSIGNED_BY_SEARCH_STRING:Ljava/lang/String; = "techogetfamilybysearchstring"

.field public static final TECHO_GET_IMEI_BLOCKED_OR_DELETE_DATABASE:Ljava/lang/String; = "getimeiblockedordeletedatabase"

.field public static final TECHO_GET_MEMBERS_BY_ADVANCE_SEARCH:Ljava/lang/String; = "getmembersbyadvancesearch"

.field public static final TECHO_GET_MEMBERS_OF_SCHOOL:Ljava/lang/String; = "getmembersofschool"

.field public static final TECHO_GET_MEMBERS_RCH_IDS:Ljava/lang/String; = "retrieveMemberRchIds"

.field public static final TECHO_GET_TOKEN_VALIDITY:Ljava/lang/String; = "techogettokenvalidity"

.field public static final TECHO_GET_USER_FORM_ACCESS_DETAIL:Ljava/lang/String; = "techogetuserformaccessdetail"

.field public static final TECHO_GET_USER_FROM_TOKEN:Ljava/lang/String; = "techogetuserfromtoken"

.field public static final TECHO_IS_USER_IN_PRODUCTION:Ljava/lang/String; = "techoisuserinproduction"

.field public static final TECHO_MARK_ATTENDANCE:Ljava/lang/String; = "markattendance"

.field public static final TECHO_NDHM_ABHA_CARD_VERIFICATION_VIA_ABHA_ADDRESS:Ljava/lang/String; = "get-abha-card-verification-via-abha-address"

.field public static final TECHO_NDHM_AUTHENTICATION:Ljava/lang/String; = "authentication"

.field public static final TECHO_NDHM_CHANGE_PHONE_GENERATE_OTP:Ljava/lang/String; = "change-phone-generate-otp"

.field public static final TECHO_NDHM_CHANGE_PHONE_VERIFY_OTP:Ljava/lang/String; = "change-phone-otp-verify"

.field public static final TECHO_NDHM_CONFIRM_AADHAAR_DEMO:Ljava/lang/String; = "confirm-aadhar-demo"

.field public static final TECHO_NDHM_CONFIRM_AADHAAR_OTP:Ljava/lang/String; = "confirm-aadhar-otp"

.field public static final TECHO_NDHM_CONFIRM_BIO:Ljava/lang/String; = "confirm-bio"

.field public static final TECHO_NDHM_CONFIRM_MOBILE_OTP:Ljava/lang/String; = "confirm-mobile-otp"

.field public static final TECHO_NDHM_CONFIRM_PASSWORD:Ljava/lang/String; = "confirm-password"

.field public static final TECHO_NDHM_CREATE_USING_AADHAAR_BIO:Ljava/lang/String; = "create-using-aadhaar-bio"

.field public static final TECHO_NDHM_CREATE_USING_AADHAAR_BIO_V3:Ljava/lang/String; = "create-using-aadhaar-bio-v3"

.field public static final TECHO_NDHM_CREATE_USING_AADHAAR_DEMO:Ljava/lang/String; = "create-using-aadhar-demo"

.field public static final TECHO_NDHM_CREATE_USING_AADHAAR_OTP:Ljava/lang/String; = "create-using-aadhar-otp"

.field public static final TECHO_NDHM_CREATE_USING_AADHAAR_OTP_V3:Ljava/lang/String; = "create-using-aadhaar-otp-v3"

.field public static final TECHO_NDHM_GENERATE_AADHAAR_OTP:Ljava/lang/String; = "generate-aadhar-otp"

.field public static final TECHO_NDHM_GENERATE_AADHAAR_OTP_V3:Ljava/lang/String; = "generate-aadhaar-otp-v3"

.field public static final TECHO_NDHM_GENERATE_MOBILE_OTP_FOR_LOGIN:Ljava/lang/String; = "generate-mobile-otp-for-login"

.field public static final TECHO_NDHM_GENERATE_OTP_FOR_ABHA_VERIFICATION_V3:Ljava/lang/String; = "generate-otp-for-abha-verification-v3"

.field public static final TECHO_NDHM_GET_ABHA_PROFILE_VIA_ABHA_ADDRESS:Ljava/lang/String; = "get-abha-profile-verification-via-abha-address"

.field public static final TECHO_NDHM_GET_ACCOUNT_DETAILS:Ljava/lang/String; = "get-account-details"

.field public static final TECHO_NDHM_GET_ACCOUNT_DETAILS_V3:Ljava/lang/String; = "get-profile-account-abha-details"

.field public static final TECHO_NDHM_GET_PROFILE_ACCOUNT_ABHA_CARD:Ljava/lang/String; = "verify-get-abha-card"

.field public static final TECHO_NDHM_HEALTH_ID_CARD_V2:Ljava/lang/String; = "heath-id-card-v2"

.field public static final TECHO_NDHM_HEALTH_ID_CARD_V3:Ljava/lang/String; = "send-sms-and-get-health-id-card-v3"

.field public static final TECHO_NDHM_LINK_BENEFIT:Ljava/lang/String; = "link-benefit"

.field public static final TECHO_NDHM_LINK_BENEFIT_V3:Ljava/lang/String; = "link-benefit-v3"

.field public static final TECHO_NDHM_LOGIN_WITH_MOBILE_VERIFIED_ABHA:Ljava/lang/String; = "login-with-mobile-verified-abha"

.field public static final TECHO_NDHM_LOGIN_WITH_MOBILE_VERIFIED_ABHA_V3:Ljava/lang/String; = "verify-mobile-profile-user-abha-verification"

.field public static final TECHO_NDHM_RESEND_MOBILE_OTP_FOR_LOGIN:Ljava/lang/String; = "resend-mobile-otp-for-login"

.field public static final TECHO_NDHM_RESEND_OTP:Ljava/lang/String; = "resend-otp"

.field public static final TECHO_NDHM_SEARCH:Ljava/lang/String; = "search"

.field public static final TECHO_NDHM_SEARCH_BY_ABHA_ADDRESS_V3:Ljava/lang/String; = "search-by-abha-address-v3"

.field public static final TECHO_NDHM_STATES:Ljava/lang/String; = "states"

.field public static final TECHO_NDHM_VERIFY_BIOMETRIC_FOR_ABHA_VERIFICATION_V3:Ljava/lang/String; = "verify-biometric-for-abha-verification-v3"

.field public static final TECHO_NDHM_VERIFY_MOBILE_OTP_FOR_LOGIN:Ljava/lang/String; = "verify-mobile-otp-for-login"

.field public static final TECHO_NDHM_VERIFY_OTP_FOR_ABHA_VERIFICATION_V3:Ljava/lang/String; = "verify-otp-for-abha-verification-v3"

.field public static final TECHO_OTP_REQUEST:Ljava/lang/String; = "generateotptecho"

.field public static final TECHO_OTP_VERIFICATION:Ljava/lang/String; = "verifyotptecho"

.field public static final TECHO_POST_AADHAR_UPDATE_DETAILS:Ljava/lang/String; = "techopostaadharupdatedetails"

.field public static final TECHO_POST_ASSIGN_FAMILY_TO_USER:Ljava/lang/String; = "techopostassignfamilytouser"

.field public static final TECHO_POST_MERGED_FAMILIES_INFORMATION:Ljava/lang/String; = "techopostmergedfamiliesinformation"

.field public static final TECHO_POST_RBSK_SCREENING_DETAILS:Ljava/lang/String; = "rbskscreeningdetails"

.field public static final TECHO_POST_SYNC_MIGRATION_DETAILS:Ljava/lang/String; = "techopostsyncmigrationdetails"

.field public static final TECHO_POST_USER_READY_TO_MOVE_PRODUCTION:Ljava/lang/String; = "techopostuserreadytomoveproduction"

.field public static final TECHO_RECORD_ENTRY_MOBILE_TO_DB_SERVER:Ljava/lang/String; = "techorecordentryfrommobiletodbservernew"

.field public static final TECHO_REMOVE_IMEI_BLOCKED_ENTRY:Ljava/lang/String; = "removeimeiblockedentry"

.field public static final TECHO_REVALIDATE_TOKEN:Ljava/lang/String; = "techorevalidatetoken"

.field public static final TECHO_STORE_ATTENDANCE:Ljava/lang/String; = "storeattendance"

.field public static final TECHO_STORE_OPD_LAB_TEST_FORM:Ljava/lang/String; = "storeOpdLabTest"

.field public static final TECHO_UPLOAD_UNCAUGHT_EXCEPTION_DETAIL:Ljava/lang/String; = "techouploaduncaughtexceptiondetail"

.field public static final TECHO_VALIDATE_USER_ENCRYPTED:Ljava/lang/String; = "validateuserenc"

.field public static final TECHO_VALIDATE_USER_NEW:Ljava/lang/String; = "techovalidateusernew"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
