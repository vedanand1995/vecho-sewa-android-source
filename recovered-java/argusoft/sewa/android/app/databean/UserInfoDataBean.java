package com.argusoft.sewa.android.app.databean;

import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public class UserInfoDataBean {
    private boolean authenticated;
    private String baselineModuleCourseIds;
    private String contactNumber;
    private String[] currentAssignedVillagesName;
    private long[] currentVillageCode;
    private Long dob;
    private String fName;
    private boolean firstTimeLogin;
    private Long id;
    private boolean isNagarPalikaUser;
    private String languageCode;
    private String loginFailureMsg;
    private Long otpVerificationDate;
    private Boolean otpVerificationRequired;
    private String password;
    private String phNoOfPM;
    private Map<Integer, String> phcNames;
    private Integer reverificationPeriod;
    private Long serverDate;
    private Map<Integer, String> subcenterNames;
    private Long userContactId;
    private String userRole;
    private String userToken;
    private String username;
    private Map<Integer, String> villageNames;

    public boolean isAuthenticated() {
        return this.authenticated;
    }

    public void setAuthenticated(boolean z) {
        this.authenticated = z;
    }

    public String getContactNumber() {
        return this.contactNumber;
    }

    public void setContactNumber(String str) {
        this.contactNumber = str;
    }

    public Long getDob() {
        return this.dob;
    }

    public void setDob(Long l) {
        this.dob = l;
    }

    public boolean isFirstTimeLogin() {
        return this.firstTimeLogin;
    }

    public void setFirstTimeLogin(boolean z) {
        this.firstTimeLogin = z;
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public void setLanguageCode(String str) {
        this.languageCode = str;
    }

    public String getLoginFailureMsg() {
        return this.loginFailureMsg;
    }

    public void setLoginFailureMsg(String str) {
        this.loginFailureMsg = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public Long getUserContactId() {
        return this.userContactId;
    }

    public void setUserContactId(Long l) {
        this.userContactId = l;
    }

    public String getUserRole() {
        return this.userRole;
    }

    public void setUserRole(String str) {
        this.userRole = str;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getfName() {
        return this.fName;
    }

    public void setfName(String str) {
        this.fName = str;
    }

    public String getPhNoOfPM() {
        return this.phNoOfPM;
    }

    public void setPhNoOfPM(String str) {
        this.phNoOfPM = str;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setUserToken(String str) {
        this.userToken = str;
    }

    public Long getServerDate() {
        return this.serverDate;
    }

    public void setServerDate(Long l) {
        this.serverDate = l;
    }

    public long[] getCurrentVillageCode() {
        return this.currentVillageCode;
    }

    public void setCurrentVillageCode(long[] jArr) {
        this.currentVillageCode = jArr;
    }

    public String[] getCurrentAssignedVillagesName() {
        return this.currentAssignedVillagesName;
    }

    public void setCurrentAssignedVillagesName(String[] strArr) {
        this.currentAssignedVillagesName = strArr;
    }

    public boolean isNagarPalikaUser() {
        return this.isNagarPalikaUser;
    }

    public void setNagarPalikaUser(boolean z) {
        this.isNagarPalikaUser = z;
    }

    public Map<Integer, String> getPhcNames() {
        return this.phcNames;
    }

    public void setPhcNames(Map<Integer, String> map) {
        this.phcNames = map;
    }

    public Map<Integer, String> getSubcenterNames() {
        return this.subcenterNames;
    }

    public void setSubcenterNames(Map<Integer, String> map) {
        this.subcenterNames = map;
    }

    public Map<Integer, String> getVillageNames() {
        return this.villageNames;
    }

    public void setVillageNames(Map<Integer, String> map) {
        this.villageNames = map;
    }

    public Long getOtpVerificationDate() {
        return this.otpVerificationDate;
    }

    public void setOtpVerificationDate(Long l) {
        this.otpVerificationDate = l;
    }

    public Boolean getOtpVerificationRequired() {
        return this.otpVerificationRequired;
    }

    public void setOtpVerificationRequired(Boolean bool) {
        this.otpVerificationRequired = bool;
    }

    public Integer getReverificationPeriod() {
        return this.reverificationPeriod;
    }

    public void setReverificationPeriod(Integer num) {
        this.reverificationPeriod = num;
    }

    public String getBaselineModuleCourseIds() {
        return this.baselineModuleCourseIds;
    }

    public void setBaselineModuleCourseIds(String str) {
        this.baselineModuleCourseIds = str;
    }

    public String toString() {
        return "UserInfoDataBean{authenticated=" + this.authenticated + ", contactNumber='" + this.contactNumber + "', dob=" + this.dob + ", firstTimeLogin=" + this.firstTimeLogin + ", languageCode='" + this.languageCode + "', loginFailureMsg='" + this.loginFailureMsg + "', password='" + this.password + "', userContactId=" + this.userContactId + ", userRole='" + this.userRole + "', username='" + this.username + "', fName='" + this.fName + "', phNoOfPM='" + this.phNoOfPM + "', id=" + this.id + ", userToken='" + this.userToken + "', serverDate=" + this.serverDate + ", currentVillageCode=" + Arrays.toString(this.currentVillageCode) + ", currentAssignedVillagesName=" + Arrays.toString(this.currentAssignedVillagesName) + ", isNagarPalikaUser=" + this.isNagarPalikaUser + ", phcNames=" + this.phcNames + ", subcenterNames=" + this.subcenterNames + ", villageNames=" + this.villageNames + '}';
    }
}
