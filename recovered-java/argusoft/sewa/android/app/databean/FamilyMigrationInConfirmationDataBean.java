package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class FamilyMigrationInConfirmationDataBean {
    private Long areaMigratedTo;
    private Long familyId;
    private Boolean hasMigrationHappened;
    private Long locationMigratedTo;
    private Long migrationId;
    private Long notificationId;

    public Long getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(Long l) {
        this.notificationId = l;
    }

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

    public Boolean getHasMigrationHappened() {
        return this.hasMigrationHappened;
    }

    public void setHasMigrationHappened(Boolean bool) {
        this.hasMigrationHappened = bool;
    }

    public Long getLocationMigratedTo() {
        return this.locationMigratedTo;
    }

    public void setLocationMigratedTo(Long l) {
        this.locationMigratedTo = l;
    }

    public Long getAreaMigratedTo() {
        return this.areaMigratedTo;
    }

    public void setAreaMigratedTo(Long l) {
        this.areaMigratedTo = l;
    }
}
