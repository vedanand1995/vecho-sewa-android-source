package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class FamilyMigrationDetailsDataBean {
    private String areaDetails;
    private Long familyId;
    private String familyIdString;
    private String fhwDetails;
    private String locationDetails;
    private List<String> memberDetails;
    private Long migrationId;
    private String otherInfo;

    public Long getMigrationId() {
        return this.migrationId;
    }

    public void setMigrationId(Long l) {
        this.migrationId = l;
    }

    public Long getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Long l) {
        this.familyId = l;
    }

    public String getFamilyIdString() {
        return this.familyIdString;
    }

    public void setFamilyIdString(String str) {
        this.familyIdString = str;
    }

    public List<String> getMemberDetails() {
        return this.memberDetails;
    }

    public void setMemberDetails(List<String> list) {
        this.memberDetails = list;
    }

    public String getLocationDetails() {
        return this.locationDetails;
    }

    public void setLocationDetails(String str) {
        this.locationDetails = str;
    }

    public String getAreaDetails() {
        return this.areaDetails;
    }

    public void setAreaDetails(String str) {
        this.areaDetails = str;
    }

    public String getFhwDetails() {
        return this.fhwDetails;
    }

    public void setFhwDetails(String str) {
        this.fhwDetails = str;
    }

    public String getOtherInfo() {
        return this.otherInfo;
    }

    public void setOtherInfo(String str) {
        this.otherInfo = str;
    }
}
