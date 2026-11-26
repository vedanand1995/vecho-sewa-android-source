package com.argusoft.sewa.android.app.util;

import android.util.Log;

/* loaded from: classes.dex */
public class WSConstants {
    public static String CONTEXT_URL_TECHO_LIVE = "https://techo.gujarat.gov.in/";
    public static String CONTEXT_URL_TECHO_TRAINING = "https://techotraining.gujarat.gov.in/";
    private static String lastUrlTecho;
    public static String CONTEXT_URL_TECHO = "https://techo.gujarat.gov.in/";
    public static String REST_TECHO_SERVICE_URL = CONTEXT_URL_TECHO + "api/mobile/";
    public static String REST_TECHO_NDHM_SERVICE_URL = REST_TECHO_SERVICE_URL + "ndhm/healthid/";

    private WSConstants() {
        throw new IllegalStateException("Utility class");
    }

    private static void setAfterContextConfig() {
        REST_TECHO_SERVICE_URL = CONTEXT_URL_TECHO + "api/mobile/";
    }

    public static void setLiveContextUrl() {
        storeLastContextUrl();
        CONTEXT_URL_TECHO = CONTEXT_URL_TECHO_LIVE;
        setAfterContextConfig();
        Log.i("WSConstants", "********** Setting Live URL TeCHO :" + CONTEXT_URL_TECHO);
    }

    public static void setTrainingContextUrl() {
        storeLastContextUrl();
        CONTEXT_URL_TECHO = CONTEXT_URL_TECHO_TRAINING;
        setAfterContextConfig();
        Log.i("WSConstants", "********** Setting Training URL TeCHO :" + CONTEXT_URL_TECHO);
    }

    private static void storeLastContextUrl() {
        lastUrlTecho = CONTEXT_URL_TECHO;
        setAfterContextConfig();
    }

    public static void setLastContextUrlStore() {
        CONTEXT_URL_TECHO = lastUrlTecho;
        setAfterContextConfig();
    }

    public static class ApiCalls {
        public static final String GET_ANDROID_VERSION = "retrieveAndroidVersion";
        public static final String GET_DETAILS_ASHA = "getdetailsasha";
        public static final String GET_DETAILS_AWW = "getdetailsaww";
        public static final String GET_DETAILS_FHSR = "getdetailsfhsr";
        public static final String GET_DETAILS_FHW = "getDetails";
        public static final String GET_DETAILS_MO = "getdetailsmo";
        public static final String GET_DETAILS_RBSK = "getdetailsrbsk";
        public static final String GET_FAMILIES_BY_LOCATION = "getfamiliesbylocation";
        public static final String GET_FONT_SIZE = "retrieveFontSize";
        public static final String GET_SERVER_IS_ALIVE = "getserverisalive";
        public static final String NDHM_CHECK_FOR_DIRECT_AUTH_MODE = "check-for-direct-auth-mode";
        public static final String NDHM_FETCH_AUTH_MEDOS_BY_HEALTH_ID = "fetch-auth-modes-by-healthid";
        public static final String NDHM_GET_HEALTH_ID_BY_MEMBER_ID = "get-all-health-ids-by-member-id";
        public static final String NDHM_INIT_LINKING = "init-linking-care-context";
        public static final String NDHM_VERIFY_DEMOGRAPHY_FOR_RECORD_LINKING = "verify-demography-care-context";
        public static final String NDHM_VERIFY_OTP_FOR_RECORD_LINKING = "verify-otp-care-context";
        public static final String TECHO_CHECK_MOBILE_TIME_SYNC_STATUS = "checkmobiletimesyncstatus";
        public static final String TECHO_DOWNLOAD_APPLICATION = "downloadapk";
        public static final String TECHO_FIREBASE_TOKEN = "firebaseToken";
        public static final String TECHO_GET_DATA_FROM_QUERY_MASTER = "getdata";
        public static final String TECHO_GET_FAMILY_TO_BE_ASSIGNED_BY_SEARCH_STRING = "techogetfamilybysearchstring";
        public static final String TECHO_GET_IMEI_BLOCKED_OR_DELETE_DATABASE = "getimeiblockedordeletedatabase";
        public static final String TECHO_GET_MEMBERS_BY_ADVANCE_SEARCH = "getmembersbyadvancesearch";
        public static final String TECHO_GET_MEMBERS_OF_SCHOOL = "getmembersofschool";
        public static final String TECHO_GET_MEMBERS_RCH_IDS = "retrieveMemberRchIds";
        public static final String TECHO_GET_TOKEN_VALIDITY = "techogettokenvalidity";
        public static final String TECHO_GET_USER_FORM_ACCESS_DETAIL = "techogetuserformaccessdetail";
        public static final String TECHO_GET_USER_FROM_TOKEN = "techogetuserfromtoken";
        public static final String TECHO_IS_USER_IN_PRODUCTION = "techoisuserinproduction";
        public static final String TECHO_MARK_ATTENDANCE = "markattendance";
        public static final String TECHO_NDHM_ABHA_CARD_VERIFICATION_VIA_ABHA_ADDRESS = "get-abha-card-verification-via-abha-address";
        public static final String TECHO_NDHM_AUTHENTICATION = "authentication";
        public static final String TECHO_NDHM_CHANGE_PHONE_GENERATE_OTP = "change-phone-generate-otp";
        public static final String TECHO_NDHM_CHANGE_PHONE_VERIFY_OTP = "change-phone-otp-verify";
        public static final String TECHO_NDHM_CONFIRM_AADHAAR_DEMO = "confirm-aadhar-demo";
        public static final String TECHO_NDHM_CONFIRM_AADHAAR_OTP = "confirm-aadhar-otp";
        public static final String TECHO_NDHM_CONFIRM_BIO = "confirm-bio";
        public static final String TECHO_NDHM_CONFIRM_MOBILE_OTP = "confirm-mobile-otp";
        public static final String TECHO_NDHM_CONFIRM_PASSWORD = "confirm-password";
        public static final String TECHO_NDHM_CREATE_USING_AADHAAR_BIO = "create-using-aadhaar-bio";
        public static final String TECHO_NDHM_CREATE_USING_AADHAAR_BIO_V3 = "create-using-aadhaar-bio-v3";
        public static final String TECHO_NDHM_CREATE_USING_AADHAAR_DEMO = "create-using-aadhar-demo";
        public static final String TECHO_NDHM_CREATE_USING_AADHAAR_OTP = "create-using-aadhar-otp";
        public static final String TECHO_NDHM_CREATE_USING_AADHAAR_OTP_V3 = "create-using-aadhaar-otp-v3";
        public static final String TECHO_NDHM_GENERATE_AADHAAR_OTP = "generate-aadhar-otp";
        public static final String TECHO_NDHM_GENERATE_AADHAAR_OTP_V3 = "generate-aadhaar-otp-v3";
        public static final String TECHO_NDHM_GENERATE_MOBILE_OTP_FOR_LOGIN = "generate-mobile-otp-for-login";
        public static final String TECHO_NDHM_GENERATE_OTP_FOR_ABHA_VERIFICATION_V3 = "generate-otp-for-abha-verification-v3";
        public static final String TECHO_NDHM_GET_ABHA_PROFILE_VIA_ABHA_ADDRESS = "get-abha-profile-verification-via-abha-address";
        public static final String TECHO_NDHM_GET_ACCOUNT_DETAILS = "get-account-details";
        public static final String TECHO_NDHM_GET_ACCOUNT_DETAILS_V3 = "get-profile-account-abha-details";
        public static final String TECHO_NDHM_GET_PROFILE_ACCOUNT_ABHA_CARD = "verify-get-abha-card";
        public static final String TECHO_NDHM_HEALTH_ID_CARD_V2 = "heath-id-card-v2";
        public static final String TECHO_NDHM_HEALTH_ID_CARD_V3 = "send-sms-and-get-health-id-card-v3";
        public static final String TECHO_NDHM_LINK_BENEFIT = "link-benefit";
        public static final String TECHO_NDHM_LINK_BENEFIT_V3 = "link-benefit-v3";
        public static final String TECHO_NDHM_LOGIN_WITH_MOBILE_VERIFIED_ABHA = "login-with-mobile-verified-abha";
        public static final String TECHO_NDHM_LOGIN_WITH_MOBILE_VERIFIED_ABHA_V3 = "verify-mobile-profile-user-abha-verification";
        public static final String TECHO_NDHM_RESEND_MOBILE_OTP_FOR_LOGIN = "resend-mobile-otp-for-login";
        public static final String TECHO_NDHM_RESEND_OTP = "resend-otp";
        public static final String TECHO_NDHM_SEARCH = "search";
        public static final String TECHO_NDHM_SEARCH_BY_ABHA_ADDRESS_V3 = "search-by-abha-address-v3";
        public static final String TECHO_NDHM_STATES = "states";
        public static final String TECHO_NDHM_VERIFY_BIOMETRIC_FOR_ABHA_VERIFICATION_V3 = "verify-biometric-for-abha-verification-v3";
        public static final String TECHO_NDHM_VERIFY_MOBILE_OTP_FOR_LOGIN = "verify-mobile-otp-for-login";
        public static final String TECHO_NDHM_VERIFY_OTP_FOR_ABHA_VERIFICATION_V3 = "verify-otp-for-abha-verification-v3";
        public static final String TECHO_OTP_REQUEST = "generateotptecho";
        public static final String TECHO_OTP_VERIFICATION = "verifyotptecho";
        public static final String TECHO_POST_AADHAR_UPDATE_DETAILS = "techopostaadharupdatedetails";
        public static final String TECHO_POST_ASSIGN_FAMILY_TO_USER = "techopostassignfamilytouser";
        public static final String TECHO_POST_MERGED_FAMILIES_INFORMATION = "techopostmergedfamiliesinformation";
        public static final String TECHO_POST_RBSK_SCREENING_DETAILS = "rbskscreeningdetails";
        public static final String TECHO_POST_SYNC_MIGRATION_DETAILS = "techopostsyncmigrationdetails";
        public static final String TECHO_POST_USER_READY_TO_MOVE_PRODUCTION = "techopostuserreadytomoveproduction";
        public static final String TECHO_RECORD_ENTRY_MOBILE_TO_DB_SERVER = "techorecordentryfrommobiletodbservernew";
        public static final String TECHO_REMOVE_IMEI_BLOCKED_ENTRY = "removeimeiblockedentry";
        public static final String TECHO_REVALIDATE_TOKEN = "techorevalidatetoken";
        public static final String TECHO_STORE_ATTENDANCE = "storeattendance";
        public static final String TECHO_STORE_OPD_LAB_TEST_FORM = "storeOpdLabTest";
        public static final String TECHO_UPLOAD_UNCAUGHT_EXCEPTION_DETAIL = "techouploaduncaughtexceptiondetail";
        public static final String TECHO_VALIDATE_USER_ENCRYPTED = "validateuserenc";
        public static final String TECHO_VALIDATE_USER_NEW = "techovalidateusernew";

        private ApiCalls() {
            throw new IllegalStateException("Utility Class");
        }
    }
}
