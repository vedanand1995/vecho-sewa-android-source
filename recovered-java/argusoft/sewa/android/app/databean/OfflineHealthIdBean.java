package com.argusoft.sewa.android.app.databean;

import java.util.Date;
import java.util.Objects;

/* loaded from: classes.dex */
public class OfflineHealthIdBean {
    private String aadhar;
    private String audiFileName;
    private String consentValues;
    private Long createdBy;
    private Date createdOn;
    private String dob;
    private Integer errorCode;
    private String errorMessage;
    private String familyId;
    private String gender;
    private Integer memberId;
    private String mobile;
    private Long modifiedBy;
    private Date modifiedOn;
    private String name;
    private Long userId;

    public OfflineHealthIdBean() {
    }

    public OfflineHealthIdBean(String str, String str2, String str3, String str4, String str5, String str6, Integer num, String str7) {
        this.aadhar = str;
        this.dob = str2;
        this.gender = str3;
        this.mobile = str4;
        this.name = str5;
        this.audiFileName = str6;
        this.memberId = num;
        this.consentValues = str7;
    }

    public String getAudiFileName() {
        return this.audiFileName;
    }

    public void setAudiFileName(String str) {
        this.audiFileName = str;
    }

    public String getAadhar() {
        return this.aadhar;
    }

    public void setAadhar(String str) {
        this.aadhar = str;
    }

    public String getDob() {
        return this.dob;
    }

    public void setDob(String str) {
        this.dob = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Long getUserId() {
        return this.userId;
    }

    public void setUserId(Long l) {
        this.userId = l;
    }

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public Integer getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(Integer num) {
        this.errorCode = num;
    }

    public Long getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(Long l) {
        this.createdBy = l;
    }

    public Date getCreatedOn() {
        return this.createdOn;
    }

    public void setCreatedOn(Date date) {
        this.createdOn = date;
    }

    public Long getModifiedBy() {
        return this.modifiedBy;
    }

    public void setModifiedBy(Long l) {
        this.modifiedBy = l;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String getConsentValues() {
        return this.consentValues;
    }

    public void setConsentValues(String str) {
        this.consentValues = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OfflineHealthIdBean offlineHealthIdBean = (OfflineHealthIdBean) obj;
        return Objects.equals(this.aadhar, offlineHealthIdBean.aadhar) && Objects.equals(this.dob, offlineHealthIdBean.dob) && Objects.equals(this.gender, offlineHealthIdBean.gender) && Objects.equals(this.mobile, offlineHealthIdBean.mobile) && Objects.equals(this.name, offlineHealthIdBean.name) && Objects.equals(this.audiFileName, offlineHealthIdBean.audiFileName);
    }

    public int hashCode() {
        return Objects.hash(this.aadhar, this.dob, this.gender, this.mobile, this.name, this.audiFileName);
    }

    public String toString() {
        return "OfflineHealthIdBean{aadhar='" + this.aadhar + "', dob='" + this.dob + "', gender='" + this.gender + "', mobile='" + this.mobile + "', name='" + this.name + "', audiFileName='" + this.audiFileName + "', userId=" + this.userId + ", familyId='" + this.familyId + "', memberId=" + this.memberId + ", errorMessage='" + this.errorMessage + "', errorCode=" + this.errorCode + ", createdBy=" + this.createdBy + ", createdOn=" + this.createdOn + ", modifiedBy=" + this.modifiedBy + ", modifiedOn=" + this.modifiedOn + ", consentValues='" + this.consentValues + "'}";
    }
}
