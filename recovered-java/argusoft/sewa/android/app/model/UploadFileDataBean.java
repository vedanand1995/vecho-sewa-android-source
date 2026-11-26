package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class UploadFileDataBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String checkSum;

    @DatabaseField
    private String fileName;

    @DatabaseField
    private String filePath;

    @DatabaseField
    private String fileType;

    @DatabaseField
    private String formType;

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private Integer memberId;

    @DatabaseField
    private int noOfAttemp;

    @DatabaseField
    private String parentStatus;

    @DatabaseField
    private Integer pregnancyRegistrationId;

    @DatabaseField
    private String recordUrl;

    @DatabaseField
    private String status;

    @DatabaseField
    private String token;

    @DatabaseField
    private String uniqueId;

    @DatabaseField
    private String userName;

    public String getRecordUrl() {
        return this.recordUrl;
    }

    public void setRecordUrl(String str) {
        this.recordUrl = str;
    }

    public int getNoOfAttemp() {
        return this.noOfAttemp;
    }

    public void setNoOfAttemp(int i) {
        this.noOfAttemp = i;
    }

    public String getCheckSum() {
        return this.checkSum;
    }

    public void setCheckSum(String str) {
        this.checkSum = str;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getFormType() {
        return this.formType;
    }

    public void setFormType(String str) {
        this.formType = str;
    }

    public String getFileType() {
        return this.fileType;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public String getFileName() {
        return this.fileName;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getParentStatus() {
        return this.parentStatus;
    }

    public void setParentStatus(String str) {
        this.parentStatus = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getUniqueId() {
        return this.uniqueId;
    }

    public void setUniqueId(String str) {
        this.uniqueId = str;
    }

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public Integer getPregnancyRegistrationId() {
        return this.pregnancyRegistrationId;
    }

    public void setPregnancyRegistrationId(Integer num) {
        this.pregnancyRegistrationId = num;
    }

    public String toString() {
        return "UploadFileDataBean{checkSum=" + this.checkSum + ", formType=" + this.formType + ", fileType=" + this.fileType + ", fileName=" + this.fileName + ", userName=" + this.userName + ", parentStatus=" + this.parentStatus + ", status=" + this.status + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }

    public String pack() {
        return this.checkSum + GlobalTypes.BEAN_SEPARATOR + this.formType + GlobalTypes.BEAN_SEPARATOR + this.fileType + GlobalTypes.BEAN_SEPARATOR + this.fileName + GlobalTypes.BEAN_SEPARATOR + this.userName + GlobalTypes.BEAN_SEPARATOR + this.parentStatus + GlobalTypes.BEAN_SEPARATOR + this.status;
    }

    public void unpack(String str) {
        String[] strArrSplit = UtilBean.split(str, GlobalTypes.BEAN_SEPARATOR);
        if (strArrSplit.length > 6) {
            this.checkSum = strArrSplit[0];
            this.formType = strArrSplit[1];
            this.fileType = strArrSplit[2];
            this.fileName = strArrSplit[3];
            this.userName = strArrSplit[4];
            this.parentStatus = strArrSplit[5];
            this.status = strArrSplit[6];
        }
    }
}
