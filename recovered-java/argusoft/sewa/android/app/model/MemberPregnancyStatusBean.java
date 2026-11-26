package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MemberPregnancyStatusBean extends BaseEntity {

    @DatabaseField
    private String ancDate;

    @DatabaseField
    private String bp;

    @DatabaseField
    private String calciumTablets;

    @DatabaseField
    private String faTablets;

    @DatabaseField
    private String haemoglobin;

    @DatabaseField
    private String ifaTablets;

    @DatabaseField
    private String immunisation;

    @DatabaseField
    private Integer memberId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Boolean nightBlindness;

    @DatabaseField
    private Date regDate;

    @DatabaseField
    private String urineTest;

    @DatabaseField
    private String weight;

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public Date getRegDate() {
        return this.regDate;
    }

    public void setRegDate(Date date) {
        this.regDate = date;
    }

    public String getAncDate() {
        return this.ancDate;
    }

    public void setAncDate(String str) {
        this.ancDate = str;
    }

    public String getBp() {
        return this.bp;
    }

    public void setBp(String str) {
        this.bp = str;
    }

    public String getHaemoglobin() {
        return this.haemoglobin;
    }

    public void setHaemoglobin(String str) {
        this.haemoglobin = str;
    }

    public String getUrineTest() {
        return this.urineTest;
    }

    public void setUrineTest(String str) {
        this.urineTest = str;
    }

    public String getWeight() {
        return this.weight;
    }

    public void setWeight(String str) {
        this.weight = str;
    }

    public String getImmunisation() {
        return this.immunisation;
    }

    public void setImmunisation(String str) {
        this.immunisation = str;
    }

    public String getFaTablets() {
        return this.faTablets;
    }

    public void setFaTablets(String str) {
        this.faTablets = str;
    }

    public String getIfaTablets() {
        return this.ifaTablets;
    }

    public void setIfaTablets(String str) {
        this.ifaTablets = str;
    }

    public String getCalciumTablets() {
        return this.calciumTablets;
    }

    public void setCalciumTablets(String str) {
        this.calciumTablets = str;
    }

    public Boolean getNightBlindness() {
        return this.nightBlindness;
    }

    public void setNightBlindness(Boolean bool) {
        this.nightBlindness = bool;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
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
