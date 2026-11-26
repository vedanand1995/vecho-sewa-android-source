package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.constants.LmsConstants;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class SupportAttachmentBean extends BaseEntity {

    @DatabaseField
    public String attachmentType;

    @DatabaseField
    public String createdAt;

    @DatabaseField
    public Integer durationSeconds;

    @DatabaseField
    public String fileName;

    @DatabaseField
    public String localPath;

    @DatabaseField
    public Long ownerUserId;

    @DatabaseField
    public Long serverId;

    @DatabaseField
    public long sizeBytes;

    @DatabaseField(index = true)
    public Integer ticketLocalId;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public boolean isVoice() {
        return "VOICE_NOTE".equals(this.attachmentType);
    }

    public boolean isImage() {
        return LmsConstants.MEDIA_TYPE_IMAGE.equals(this.attachmentType);
    }
}
