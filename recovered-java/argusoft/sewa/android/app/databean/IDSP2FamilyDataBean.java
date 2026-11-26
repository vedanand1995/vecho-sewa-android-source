package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class IDSP2FamilyDataBean {
    private boolean anyIllness;
    private boolean anyOneCovidContact;
    private boolean anyOneTravelFromFamily;
    private String familyId;
    private Long serviceDate;

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public boolean isAnyIllness() {
        return this.anyIllness;
    }

    public void setAnyIllness(boolean z) {
        this.anyIllness = z;
    }

    public boolean isAnyOneTravelFromFamily() {
        return this.anyOneTravelFromFamily;
    }

    public void setAnyOneTravelFromFamily(boolean z) {
        this.anyOneTravelFromFamily = z;
    }

    public boolean isAnyOneCovidContact() {
        return this.anyOneCovidContact;
    }

    public void setAnyOneCovidContact(boolean z) {
        this.anyOneCovidContact = z;
    }

    public Long getServiceDate() {
        return this.serviceDate;
    }

    public void setServiceDate(Long l) {
        this.serviceDate = l;
    }
}
