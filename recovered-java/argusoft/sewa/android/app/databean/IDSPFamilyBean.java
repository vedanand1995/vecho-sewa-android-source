package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class IDSPFamilyBean {
    private boolean anyIllness;
    private boolean anyOneCovidContact;
    private boolean anyOneTravelFromFamily;
    private String familyId;
    private Date serviceDate;

    public IDSPFamilyBean() {
    }

    public IDSPFamilyBean(boolean z, boolean z2) {
        this.anyIllness = z;
        this.anyOneTravelFromFamily = z2;
    }

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

    public Date getServiceDate() {
        return this.serviceDate;
    }

    public void setServiceDate(Date date) {
        this.serviceDate = date;
    }
}
