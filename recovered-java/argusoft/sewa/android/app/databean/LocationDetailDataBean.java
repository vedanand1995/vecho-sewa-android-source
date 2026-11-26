package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LocationDetailDataBean {
    private Integer id;
    private String locType;
    private String name;
    private String type;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getLocType() {
        return this.locType;
    }

    public void setLocType(String str) {
        this.locType = str;
    }

    public String toString() {
        return "LocationDetailDataBean{id=" + this.id + ", name='" + this.name + "', type='" + this.type + "', locType='" + this.locType + "'}";
    }
}
