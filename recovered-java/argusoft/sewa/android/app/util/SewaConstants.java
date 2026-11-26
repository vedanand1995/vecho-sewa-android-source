package com.argusoft.sewa.android.app.util;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SewaConstants {
    public static final String ALLOW_SECOND_FORM_SAME_MEMBER_OFFLINE = "allowForm";
    public static final String ANNOUNCEMENT_BEAN_ANNOUNCEMENT_ID = "announcementId";
    public static final String CAMPAIGN_PNC_MOTHER = "PNCM";
    public static final String CAMPAIGN_PREGNANT_WOMEN = "CPW";
    public static final String CHILDREN = "C";
    public static final String CHILDREN_5_PLUS = "C_5_20";
    public static final String CHILDREN_5_TO_7 = "C_5_7";
    public static final String CHILDREN_ABOVE_5 = "Children above 5 years";
    public static final String DATE_TIME_MISMATCH = "Your device's date and time don't match the server's date and time.Please correct it or contact support if the issue continues.";
    public static String DIRECTORY_PATH = null;
    public static final String DIR_APK_DOWNLOADED;
    public static final String DIR_APK_DOWNLOADED_TEMP;
    public static final String DIR_AUDIO;
    public static final String DIR_BOOKMARK;
    public static final String DIR_DATABASE;
    public static final String DIR_DOWNLOADED;
    public static final String DIR_IMAGE;
    public static final String DIR_LIBRARY;
    public static final String DIR_LIBRARY_TEMP;
    public static final String DIR_LMS;
    public static final String DIR_LMS_TEMP;
    public static final String DIR_VIDEO;
    public static final String DOWNLOAD_PREFS_NAME = "APP_DOWNLOAD_PREF";
    public static final String ELIGIBLE_COUPLES = "EC";
    public static final String ENTITY = "entity";
    public static final String EXCEPTION_FETCHING_DATA_FOR_USER = "Network Issue During Fetching Data for User";
    public static final String EXCEPTION_FETCHING_USER_FORM_ACCESS = "Network Issue During Downloading Form Access";
    public static final String EXCEPTION_INITIALIZING_DOWNLOAD = "Network Issue During Initial Data Download";
    public static final String EXCEPTION_TOKEN_UPDATION = "Network Issue During Internal Process";
    public static final String EXCEPTION_UPLOAD_TO_SERVER = "Network Issue During Upload to server";
    public static final String EXCEPTION_USER_DOWNLOAD = "Network Issue During User related Download";
    public static final String LIBRARY_DOWNLOAD_PREFS_NAME = "LIBRARY_DOWNLOAD_PREF";
    public static final String LIST_VALUE_BEAN_DATAMAP = "field";
    public static final String LIST_VALUE_BEAN_ENTITY = "formCode";
    public static final String LIST_VALUE_BEAN_FIELD = "field";
    public static final String LIST_VALUE_BEAN_FIELD_TYPE = "fieldType";
    public static final String LIST_VALUE_BEAN_ID_OF_VALUE = "idOfValue";
    public static final String LMS_DOWNLOAD_PREFS_NAME = "LMS_DOWNLOAD_PREF";
    public static final String LOGIN_FAILURE = "Invalid username and/or password";
    public static final String LOGIN_SUCCESS_LOCAL = "Login Successful Without Network";
    public static final String LOGIN_SUCCESS_WEB = "Login Successful With Network";
    public static final String LOGIN_UNAUTHORISED_ACCESS = "User is not authorised to login";
    public static final String NETWORK_AVAILABLE = "Network Available";
    public static final String NETWORK_FAILURE = "Network Unavailable";
    public static final String NETWORK_NOT_PROPER = "Network Connection Error";
    public static final String NEWLY_WEDDED_COUPLES = "NWC";
    public static final String NO_INTERNET_CONNECTION = "No internet connection. Turn ON internet and try again";
    public static final String PNC_MOTHER = "PNC";
    public static final String PREGNANT_WOMEN = "PW";
    public static final String QUESTION_BEAN_ENTITY = "entity";
    public static final String QUESTION_COLOR_1 = "color1";
    public static final String QUESTION_COLOR_2 = "color2";
    public static final String QUESTION_COLOR_3 = "color3";
    public static final String QUESTION_COLOR_4 = "color4";
    public static final String REJECTION_REASON_BANK_INVALID_DETAIL = "Bank Details Mismatch";
    public static final String REJECTION_REASON_OTHER = "Other";
    public static final String REJECTION_REASON_PHOTO_QUALITY = "Photo Quality Not Upto Mark";
    public static final String REJECTION_REASON_PROPER_DOCUMENTS = "Documents Not Proper";
    public static final String SD_CARD_PATH;
    public static final String SELECTED_LOCATION_IDS = "selectedLocationIds";
    public static final String SERVER_UNREACHABLE = "Server unreachable. Please try again after sometime";
    public static final String SQL_EXCEPTION = "Database issue while refresh/login. Please contact your co-ordinator.";
    public static final String STORED_FORM_CHECKSUM = "storedFormChecksum";
    public static final String SUCCESS = "SUCCESS";
    public static final String TIME_STAMP_LAST_REFRESH = "lastRefreshDate";
    public static final String USER_NOT_FOUND = "User not found with this username";
    private static Map<String, Integer> locationLevels;

    private SewaConstants() {
        throw new IllegalStateException("Utility Class");
    }

    public static String getDirectoryPath(Context context, String str) {
        if (DIRECTORY_PATH != null) {
            return DIRECTORY_PATH + str;
        }
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        DIRECTORY_PATH = externalFilesDir.getAbsolutePath();
        return DIRECTORY_PATH + str;
    }

    static {
        String string = Environment.getExternalStorageDirectory().toString();
        SD_CARD_PATH = string;
        DIR_IMAGE = string + "/sewa/images/";
        DIR_AUDIO = string + "/sewa/audio/";
        DIR_VIDEO = string + "/sewa/video/";
        DIR_DOWNLOADED = string + "/sewa/downloads/";
        String str = string + "/sewa/sewa_apk/";
        DIR_APK_DOWNLOADED = str;
        DIR_APK_DOWNLOADED_TEMP = str + "temp/";
        DIR_DATABASE = string + "/sewa/database/";
        String str2 = string + "/sewa/library/";
        DIR_LIBRARY = str2;
        DIR_LIBRARY_TEMP = str2 + "temp/";
        DIR_BOOKMARK = string + "/sewa/bookmarks/";
        String str3 = string + "/sewa/lms/";
        DIR_LMS = str3;
        DIR_LMS_TEMP = str3 + "temp/";
        Log.i("SewaConstants", "SewaConstants  is loading ...........");
        fillLocationLevels();
    }

    private static void fillLocationLevels() {
        HashMap map = new HashMap();
        locationLevels = map;
        map.put("Level-0", 0);
        locationLevels.put("Level-1", 1);
        locationLevels.put("Level-2", 2);
        locationLevels.put("Level-3", 3);
        locationLevels.put("Level-4", 4);
        locationLevels.put("Level-5", 5);
        locationLevels.put("Level-6", 6);
        locationLevels.put("areaList", 7);
        locationLevels.put("anganwadiList", 8);
    }

    public static Map<String, Integer> getLocationLevel() {
        return locationLevels;
    }
}
