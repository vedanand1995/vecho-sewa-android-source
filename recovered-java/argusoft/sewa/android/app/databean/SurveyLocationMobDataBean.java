package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class SurveyLocationMobDataBean {
    private Integer id;
    private Boolean isActive;
    private Integer level;
    private String lgdCode;
    private String name;
    private Integer parent;
    private String type;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Integer getLevel() {
        return this.level;
    }

    public void setLevel(Integer num) {
        this.level = num;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Integer getParent() {
        return this.parent;
    }

    public void setParent(Integer num) {
        this.parent = num;
    }

    public Boolean getIsActive() {
        return this.isActive;
    }

    public void setIsActive(Boolean bool) {
        this.isActive = bool;
    }

    public String getLgdCode() {
        return this.lgdCode;
    }

    public void setLgdCode(String str) {
        this.lgdCode = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "SurveyLocationMobDataBean{id=" + this.id + ", level=" + this.level + ", name=" + this.name + ", parent=" + this.parent + ", isActive=" + this.isActive + '}';
    }
}
