package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class SupportTicketBean extends BaseEntity {
    public static final String FAILED = "FAILED";
    public static final String PENDING = "PENDING";
    public static final String SYNCED = "SYNCED";

    @DatabaseField
    public String allowedActions;

    @DatabaseField
    public String createdAt;

    @DatabaseField
    public String description;

    @DatabaseField
    public String detailsFetchedFor;

    @DatabaseField
    public String idempotencyKey;

    @DatabaseField(index = true)
    public Long ownerUserId;

    @DatabaseField
    public String photoPaths;

    @DatabaseField
    public String resolutionSummary;

    @DatabaseField
    public Long serverId;

    @DatabaseField
    public String status;

    @DatabaseField
    public String statusChangedAt;

    @DatabaseField
    public String syncError;

    @DatabaseField
    public String syncState;

    @DatabaseField
    public String ticketNumber;

    @DatabaseField
    public String title;

    @DatabaseField
    public String topic;

    @DatabaseField
    public String voicePath;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public boolean isOnServer() {
        return this.serverId != null;
    }

    public boolean may(String str) {
        String str2 = this.allowedActions;
        if (str2 == null) {
            return false;
        }
        for (String str3 : str2.split(GlobalTypes.COMMA)) {
            if (str3.trim().equals(str)) {
                return true;
            }
        }
        return false;
    }
}
