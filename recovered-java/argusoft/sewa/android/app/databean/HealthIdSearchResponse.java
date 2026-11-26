package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class HealthIdSearchResponse {
    private List<String> authMethods;
    private String healthId;
    private String healthIdNumber;
    private String name;
    private HealthIdTags tags;

    public List<String> getAuthMethods() {
        return this.authMethods;
    }

    public void setAuthMethods(List<String> list) {
        this.authMethods = list;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getHealthIdNumber() {
        return this.healthIdNumber;
    }

    public void setHealthIdNumber(String str) {
        this.healthIdNumber = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public HealthIdTags getTags() {
        return this.tags;
    }

    public void setTags(HealthIdTags healthIdTags) {
        this.tags = healthIdTags;
    }
}
