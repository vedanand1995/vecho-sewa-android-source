package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.UncaughtExceptionBean;
import java.util.List;

/* loaded from: classes.dex */
public class MobileRequestParamDto {
    private String answerString;
    private Integer attendanceId;
    private String familyId;
    private String firebaseToken;
    private String formCode;
    private String gpsRecords;
    private Boolean isFirstTimeLogin;
    private Boolean isSearchByFamilyId;
    private Integer labTestDetId;
    private String labTestVersion;
    private String languageCode;
    private String locationId;
    private List<Integer> locationIds;
    private List<MergedFamiliesBean> mergedFamiliesBeans;
    private List<LmsEventBean> mobileEvents;
    private String mobileNumber;
    private String otp;
    private String password;
    private String[] records;
    private String searchString;
    private String token;
    private List<UncaughtExceptionBean> uncaughtExceptionBeans;
    private Long userId;
    private String userName;
    private String[] userPassMap;
    private List<String> userTokens;

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public Long getUserId() {
        return this.userId;
    }

    public void setUserId(Long l) {
        this.userId = l;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public Boolean getFirstTimeLogin() {
        return this.isFirstTimeLogin;
    }

    public void setFirstTimeLogin(Boolean bool) {
        this.isFirstTimeLogin = bool;
    }

    public List<UncaughtExceptionBean> getUncaughtExceptionBeans() {
        return this.uncaughtExceptionBeans;
    }

    public void setUncaughtExceptionBeans(List<UncaughtExceptionBean> list) {
        this.uncaughtExceptionBeans = list;
    }

    public String getSearchString() {
        return this.searchString;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public Boolean getSearchByFamilyId() {
        return this.isSearchByFamilyId;
    }

    public void setSearchByFamilyId(Boolean bool) {
        this.isSearchByFamilyId = bool;
    }

    public String getLocationId() {
        return this.locationId;
    }

    public void setLocationId(String str) {
        this.locationId = str;
    }

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public List<MergedFamiliesBean> getMergedFamiliesBeans() {
        return this.mergedFamiliesBeans;
    }

    public void setMergedFamiliesBeans(List<MergedFamiliesBean> list) {
        this.mergedFamiliesBeans = list;
    }

    public String getFormCode() {
        return this.formCode;
    }

    public void setFormCode(String str) {
        this.formCode = str;
    }

    public String[] getRecords() {
        return this.records;
    }

    public void setRecords(String[] strArr) {
        this.records = strArr;
    }

    public String[] getUserPassMap() {
        return this.userPassMap;
    }

    public void setUserPassMap(String[] strArr) {
        this.userPassMap = strArr;
    }

    public List<String> getUserTokens() {
        return this.userTokens;
    }

    public void setUserTokens(List<String> list) {
        this.userTokens = list;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public String getOtp() {
        return this.otp;
    }

    public void setOtp(String str) {
        this.otp = str;
    }

    public String getGpsRecords() {
        return this.gpsRecords;
    }

    public void setGpsRecords(String str) {
        this.gpsRecords = str;
    }

    public Integer getAttendanceId() {
        return this.attendanceId;
    }

    public void setAttendanceId(Integer num) {
        this.attendanceId = num;
    }

    public String getAnswerString() {
        return this.answerString;
    }

    public void setAnswerString(String str) {
        this.answerString = str;
    }

    public Integer getLabTestDetId() {
        return this.labTestDetId;
    }

    public void setLabTestDetId(Integer num) {
        this.labTestDetId = num;
    }

    public String getLabTestVersion() {
        return this.labTestVersion;
    }

    public void setLabTestVersion(String str) {
        this.labTestVersion = str;
    }

    public List<LmsEventBean> getMobileEvents() {
        return this.mobileEvents;
    }

    public void setMobileEvents(List<LmsEventBean> list) {
        this.mobileEvents = list;
    }

    public String getFirebaseToken() {
        return this.firebaseToken;
    }

    public void setFirebaseToken(String str) {
        this.firebaseToken = str;
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public void setLanguageCode(String str) {
        this.languageCode = str;
    }

    public List<Integer> getLocationIds() {
        return this.locationIds;
    }

    public void setLocationIds(List<Integer> list) {
        this.locationIds = list;
    }
}
