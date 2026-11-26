package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import java.util.Date;

/* loaded from: classes.dex */
public class DailyPresenceReport extends BaseEntity {

    @DatabaseField
    private Integer attendanceId;

    @DatabaseField
    private Date endTime;

    @DatabaseField
    private String locations;

    @DatabaseField
    private Date startTime;

    public Date getStartTime() {
        return this.startTime;
    }

    public void setStartTime(Date date) {
        this.startTime = date;
    }

    public String getLocations() {
        return this.locations;
    }

    public void setLocations(String str) {
        this.locations = str;
    }

    public Date getEndTime() {
        return this.endTime;
    }

    public void setEndTime(Date date) {
        this.endTime = date;
    }

    public Integer getAttendanceId() {
        return this.attendanceId;
    }

    public void setAttendanceId(Integer num) {
        this.attendanceId = num;
    }

    public Integer getId() {
        return this.id;
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
