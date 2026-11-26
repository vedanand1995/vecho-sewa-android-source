package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class CurrentLocationDto {
    private Date entryDate;
    private String latitude;
    private String longitude;

    public CurrentLocationDto(Date date, String str, String str2) {
        this.entryDate = date;
        this.latitude = str;
        this.longitude = str2;
    }

    public Date getEntryDate() {
        return this.entryDate;
    }

    public void setEntryDate(Date date) {
        this.entryDate = date;
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
}
