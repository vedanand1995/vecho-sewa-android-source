package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class SupportActionBean extends BaseEntity {
    public static final String FIXED = "FIXED";
    public static final String NOT_FIXED = "NOT_FIXED";

    @DatabaseField
    public String action;

    @DatabaseField
    public long createdAt;

    @DatabaseField
    public Long ownerUserId;

    @DatabaseField
    public String reason;

    @DatabaseField(index = true)
    public Integer ticketLocalId;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }
}
