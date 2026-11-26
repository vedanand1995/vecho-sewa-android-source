package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class SupportCommentBean extends BaseEntity {

    @DatabaseField
    public String authorType;

    @DatabaseField
    public String body;

    @DatabaseField
    public String createdAt;

    @DatabaseField
    public boolean mine;

    @DatabaseField
    public Long ownerUserId;

    @DatabaseField
    public Long serverId;

    @DatabaseField
    public String syncError;

    @DatabaseField
    public String syncState;

    @DatabaseField(index = true)
    public Integer ticketLocalId;

    @DatabaseField
    public String voicePath;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }
}
