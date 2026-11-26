package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class UserBean extends BaseEntity {

    @DatabaseField
    private String State;

    @DatabaseField
    private String aadharNumberEncrypted;

    @DatabaseField
    private Date activationDate;

    @DatabaseField
    private String address;

    @DatabaseField
    private String code;

    @DatabaseField
    private String contactNumber;

    @DatabaseField
    private String convoxId;

    @DatabaseField
    private String createdBy;

    @DatabaseField
    private Date createdOn;

    @DatabaseField
    private Date dob;

    @DatabaseField
    private String emailId;

    @DatabaseField
    private String firstName;

    @DatabaseField
    private int freeSpaceMb;

    @DatabaseField
    private String gender;

    @DatabaseField
    private String imeiNumber;

    @DatabaseField
    private int infrastructureId;

    @DatabaseField
    private String lastName;

    @DatabaseField
    private String latitude;

    @DatabaseField
    private int locationId;

    @DatabaseField
    private String loginCode;

    @DatabaseField
    private String longitude;

    @DatabaseField
    private int memberMasterId;

    @DatabaseField
    private String middleName;

    @DatabaseField
    private int noOfAttempts;

    @DatabaseField
    private String password;

    @DatabaseField
    private String pin;

    @DatabaseField
    private int pincode;

    @DatabaseField
    private String preferedLanguage;

    @DatabaseField
    private int rchInstitutionMasterId;

    @DatabaseField
    private String reportedPreferredLanguage;

    @DatabaseField
    private int roleId;

    @DatabaseField
    private int sdkVersion;

    @DatabaseField
    private String searchText;

    @DatabaseField
    private String serverType;

    @DatabaseField
    private String techoPhoneNumber;

    @DatabaseField
    private String title;

    @DatabaseField
    private String updatedBy;

    @DatabaseField
    private Date updatedOn;

    @DatabaseField
    private int userId;

    @DatabaseField
    private String userName;

    public UserBean() {
    }

    public UserBean(int i, String str, String str2, Date date, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, int i3, int i4, int i5, int i6, int i7, String str18, String str19, String str20, String str21, String str22, Date date2, int i8, int i9, int i10, int i11, String str23, String str24, String str25, String str26, Date date3, Date date4) {
        this.userId = i;
        this.code = str;
        this.contactNumber = str2;
        this.dob = date;
        this.emailId = str3;
        this.firstName = str4;
        this.gender = str5;
        this.lastName = str6;
        this.middleName = str7;
        this.password = str8;
        this.preferedLanguage = str9;
        this.roleId = i2;
        this.State = str10;
        this.userName = str11;
        this.serverType = str12;
        this.searchText = str13;
        this.title = str14;
        this.imeiNumber = str15;
        this.techoPhoneNumber = str16;
        this.aadharNumberEncrypted = str17;
        this.noOfAttempts = i3;
        this.rchInstitutionMasterId = i4;
        this.infrastructureId = i5;
        this.sdkVersion = i6;
        this.freeSpaceMb = i7;
        this.latitude = str18;
        this.longitude = str19;
        this.reportedPreferredLanguage = str20;
        this.loginCode = str21;
        this.convoxId = str22;
        this.activationDate = date2;
        this.memberMasterId = i8;
        this.locationId = i10;
        this.pincode = i11;
        this.pin = str23;
        this.address = str24;
        this.createdBy = str25;
        this.updatedBy = str26;
        this.createdOn = date3;
        this.updatedOn = date4;
    }

    public int getId() {
        return this.userId;
    }

    public void setId(int i) {
        this.userId = i;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public String getContactNumber() {
        return this.contactNumber;
    }

    public void setContactNumber(String str) {
        this.contactNumber = str;
    }

    public Date getDob() {
        return this.dob;
    }

    public void setDob(Date date) {
        this.dob = date;
    }

    public String getEmailId() {
        return this.emailId;
    }

    public void setEmailId(String str) {
        this.emailId = str;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public String getMiddleName() {
        return this.middleName;
    }

    public void setMiddleName(String str) {
        this.middleName = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public String getPreferedLanguage() {
        return this.preferedLanguage;
    }

    public void setPreferedLanguage(String str) {
        this.preferedLanguage = str;
    }

    public int getRoleId() {
        return this.roleId;
    }

    public void setRoleId(int i) {
        this.roleId = i;
    }

    public String getState() {
        return this.State;
    }

    public void setState(String str) {
        this.State = str;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getServerType() {
        return this.serverType;
    }

    public void setServerType(String str) {
        this.serverType = str;
    }

    public String getSearchText() {
        return this.searchText;
    }

    public void setSearchText(String str) {
        this.searchText = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getImeiNumber() {
        return this.imeiNumber;
    }

    public void setImeiNumber(String str) {
        this.imeiNumber = str;
    }

    public String getTechoPhoneNumber() {
        return this.techoPhoneNumber;
    }

    public void setTechoPhoneNumber(String str) {
        this.techoPhoneNumber = str;
    }

    public String getAadharNumberEncrypted() {
        return this.aadharNumberEncrypted;
    }

    public void setAadharNumberEncrypted(String str) {
        this.aadharNumberEncrypted = str;
    }

    public int getNoOfAttempts() {
        return this.noOfAttempts;
    }

    public void setNoOfAttempts(int i) {
        this.noOfAttempts = i;
    }

    public int getRchInstitutionMasterId() {
        return this.rchInstitutionMasterId;
    }

    public void setRchInstitutionMasterId(int i) {
        this.rchInstitutionMasterId = i;
    }

    public int getInfrastructureId() {
        return this.infrastructureId;
    }

    public void setInfrastructureId(int i) {
        this.infrastructureId = i;
    }

    public int getSdkVersion() {
        return this.sdkVersion;
    }

    public void setSdkVersion(int i) {
        this.sdkVersion = i;
    }

    public int getFreeSpaceMb() {
        return this.freeSpaceMb;
    }

    public void setFreeSpaceMb(int i) {
        this.freeSpaceMb = i;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public String getReportedPreferredLanguage() {
        return this.reportedPreferredLanguage;
    }

    public void setReportedPreferredLanguage(String str) {
        this.reportedPreferredLanguage = str;
    }

    public String getLoginCode() {
        return this.loginCode;
    }

    public void setLoginCode(String str) {
        this.loginCode = str;
    }

    public String getConvoxId() {
        return this.convoxId;
    }

    public void setConvoxId(String str) {
        this.convoxId = str;
    }

    public Date getActivationDate() {
        return this.activationDate;
    }

    public void setActivationDate(Date date) {
        this.activationDate = date;
    }

    public int getMemberMasterId() {
        return this.memberMasterId;
    }

    public void setMemberMasterId(int i) {
        this.memberMasterId = i;
    }

    public int getLocationId() {
        return this.locationId;
    }

    public void setLocationId(int i) {
        this.locationId = i;
    }

    public int getPincode() {
        return this.pincode;
    }

    public void setPincode(int i) {
        this.pincode = i;
    }

    public String getPin() {
        return this.pin;
    }

    public void setPin(String str) {
        this.pin = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String str) {
        this.createdBy = str;
    }

    public String getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(String str) {
        this.updatedBy = str;
    }

    public Date getCreatedOn() {
        return this.createdOn;
    }

    public void setCreatedOn(Date date) {
        this.createdOn = date;
    }

    public Date getUpdatedOn() {
        return this.updatedOn;
    }

    public void setUpdatedOn(Date date) {
        this.updatedOn = date;
    }
}
