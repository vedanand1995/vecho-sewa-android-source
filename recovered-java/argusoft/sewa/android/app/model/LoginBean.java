package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LoginBean extends BaseEntity {

    @DatabaseField
    private Date OtpVerificationDate;

    @DatabaseField
    private boolean firstLogin;

    @DatabaseField
    private String firstName;

    @DatabaseField
    private boolean hidden;

    @DatabaseField
    private boolean isNagarpalikaUser;

    @DatabaseField
    private boolean isRemember;

    @DatabaseField
    private boolean isTrainingUser;

    @DatabaseField
    private String languageCode;

    @DatabaseField
    private Long lastUpdateOfAnnouncements;

    @DatabaseField
    private Long lastUpdateOfInventory;

    @DatabaseField
    private Long lastUpdateOfLabels;

    @DatabaseField
    private Long lastUpdateOfListValues;

    @DatabaseField
    private boolean loggedIn;

    @DatabaseField
    private Boolean otpVerificationRequired;

    @DatabaseField
    private String password;

    @DatabaseField
    private String passwordPlain;

    @DatabaseField
    private String phoneNoOfPM;

    @DatabaseField
    private Integer reverificationPeriod;

    @DatabaseField
    private Long serverDate;

    @DatabaseField
    private int updateCounter;

    @DatabaseField
    private Long userID;

    @DatabaseField
    private String userRole;

    @DatabaseField
    private String userRoleCode;

    @DatabaseField
    private String userToken;

    @DatabaseField
    private String username;

    @DatabaseField
    private String villageCode;

    @DatabaseField
    private String villageName;

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setUserToken(String str) {
        this.userToken = str;
    }

    public String getUserRole() {
        return this.userRole;
    }

    public void setUserRole(String str) {
        this.userRole = str;
    }

    public String getUserRoleCode() {
        return this.userRoleCode;
    }

    public void setUserRoleCode(String str) {
        this.userRoleCode = str;
    }

    public boolean isLoggedIn() {
        return this.loggedIn;
    }

    public void setLoggedIn(boolean z) {
        this.loggedIn = z;
    }

    public boolean isFirstLogin() {
        return this.firstLogin;
    }

    public void setFirstLogin(boolean z) {
        this.firstLogin = z;
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public void setLanguageCode(String str) {
        this.languageCode = str;
    }

    public String getVillageCode() {
        return this.villageCode;
    }

    public void setVillageCode(String str) {
        this.villageCode = str;
    }

    public String getVillageName() {
        return this.villageName;
    }

    public void setVillageName(String str) {
        this.villageName = str;
    }

    public Long getServerDate() {
        return this.serverDate;
    }

    public void setServerDate(Long l) {
        this.serverDate = l;
    }

    public Long getLastUpdateOfLabels() {
        return this.lastUpdateOfLabels;
    }

    public void setLastUpdateOfLabels(Long l) {
        this.lastUpdateOfLabels = l;
    }

    public Long getLastUpdateOfListValues() {
        return this.lastUpdateOfListValues;
    }

    public void setLastUpdateOfListValues(Long l) {
        this.lastUpdateOfListValues = l;
    }

    public Long getLastUpdateOfAnnouncements() {
        return this.lastUpdateOfAnnouncements;
    }

    public void setLastUpdateOfAnnouncements(Long l) {
        this.lastUpdateOfAnnouncements = l;
    }

    public Long getLastUpdateOfInventory() {
        return this.lastUpdateOfInventory;
    }

    public void setLastUpdateOfInventory(Long l) {
        this.lastUpdateOfInventory = l;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getPhoneNoOfPM() {
        return this.phoneNoOfPM;
    }

    public void setPhoneNoOfPM(String str) {
        this.phoneNoOfPM = str;
    }

    public Long getUserID() {
        return this.userID;
    }

    public void setUserID(Long l) {
        this.userID = l;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public int getUpdateCounter() {
        return this.updateCounter;
    }

    public void setUpdateCounter(int i) {
        this.updateCounter = i;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public boolean isNagarpalikaUser() {
        return this.isNagarpalikaUser;
    }

    public void setNagarpalikaUser(boolean z) {
        this.isNagarpalikaUser = z;
    }

    public boolean isTrainingUser() {
        return this.isTrainingUser;
    }

    public void setTrainingUser(boolean z) {
        this.isTrainingUser = z;
    }

    public String getPasswordPlain() {
        return this.passwordPlain;
    }

    public void setPasswordPlain(String str) {
        this.passwordPlain = str;
    }

    public boolean isRemember() {
        return this.isRemember;
    }

    public void setRemember(boolean z) {
        this.isRemember = z;
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

    public Date getOtpVerificationDate() {
        return this.OtpVerificationDate;
    }

    public void setOtpVerificationDate(Date date) {
        this.OtpVerificationDate = date;
    }

    public String toString() {
        return "LoginBean{username='" + this.username + "', password='" + this.password + "', userToken='" + this.userToken + "', userRole='" + this.userRole + "', userRoleCode='" + this.userRoleCode + "', loggedIn=" + this.loggedIn + ", firstLogin=" + this.firstLogin + ", languageCode='" + this.languageCode + "', villageCode='" + this.villageCode + "', villageName='" + this.villageName + "', serverDate=" + this.serverDate + ", lastUpdateOfLabels=" + this.lastUpdateOfLabels + ", lastUpdateOfListValues=" + this.lastUpdateOfListValues + ", lastUpdateOfAnnouncements=" + this.lastUpdateOfAnnouncements + ", lastUpdateOfInventory=" + this.lastUpdateOfInventory + ", firstName='" + this.firstName + "', phoneNoOfPM='" + this.phoneNoOfPM + "', userID=" + this.userID + ", hidden=" + this.hidden + ", updateCounter=" + this.updateCounter + ", isNagarpalikaUser=" + this.isNagarpalikaUser + ", isTrainingUser=" + this.isTrainingUser + ", passwordPlain='" + this.passwordPlain + "'}";
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
