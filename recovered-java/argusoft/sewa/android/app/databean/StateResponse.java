package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class StateResponse {
    private String code;
    private List<StateResponseDistrict> districts;
    private String name;

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public List<StateResponseDistrict> getDistricts() {
        return this.districts;
    }

    public void setDistricts(List<StateResponseDistrict> list) {
        this.districts = list;
    }
}
