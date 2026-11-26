package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class HIPVerifyDemography {
    private String dateOfBirth;
    private String gender;
    private HIPPatientIdentifiers identifier;
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getDateOfBirth() {
        return this.dateOfBirth;
    }

    public void setDateOfBirth(String str) {
        this.dateOfBirth = str;
    }

    public HIPPatientIdentifiers getIdentifier() {
        return this.identifier;
    }

    public void setIdentifier(HIPPatientIdentifiers hIPPatientIdentifiers) {
        this.identifier = hIPPatientIdentifiers;
    }
}
