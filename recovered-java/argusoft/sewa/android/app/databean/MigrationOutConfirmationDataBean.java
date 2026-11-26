package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class MigrationOutConfirmationDataBean {
    private Boolean hasMigrationHappened;
    private Long memberId;
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

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public Boolean getHasMigrationHappened() {
        return this.hasMigrationHappened;
    }

    public void setHasMigrationHappened(Boolean bool) {
        this.hasMigrationHappened = bool;
    }
}
