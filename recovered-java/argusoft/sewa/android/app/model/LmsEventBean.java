package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LmsEventBean extends BaseEntity {

    @DatabaseField
    private String checksum;

    @DatabaseField
    private String eventData;

    @DatabaseField
    private String eventType;

    @DatabaseField
    private Date mobileDate;

    @DatabaseField
    private String recordUrl;

    @DatabaseField
    private String token;

    @DatabaseField
    private Integer userId;

    public String getChecksum() {
        return this.checksum;
    }

    public void setChecksum(String str) {
        this.checksum = str;
    }

    public String getRecordUrl() {
        return this.recordUrl;
    }

    public void setRecordUrl(String str) {
        this.recordUrl = str;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer num) {
        this.userId = num;
    }

    public Date getMobileDate() {
        return this.mobileDate;
    }

    public void setMobileDate(Date date) {
        this.mobileDate = date;
    }

    public String getEventType() {
        return this.eventType;
    }

    public void setEventType(String str) {
        this.eventType = str;
    }

    public String getEventData() {
        return this.eventData;
    }

    public void setEventData(String str) {
        this.eventData = str;
    }

    public String toString() {
        return "LmsEventBean{checksum='" + this.checksum + "', recordUrl='" + this.recordUrl + "', token='" + this.token + "', userId=" + this.userId + ", mobileDate=" + this.mobileDate + ", eventType='" + this.eventType + "', eventData='" + this.eventData + "'}";
    }
}
