package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class AnnouncementBean extends BaseEntity {

    @DatabaseField
    private Long announcementId;

    @DatabaseField
    private String defaultLanguage;

    @DatabaseField
    private String fileName;

    @DatabaseField
    private String isDownloaded;

    @DatabaseField
    private int isPlayedAnnouncement;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Long publishedOn;

    @DatabaseField
    private String subject;

    public AnnouncementBean() {
    }

    public AnnouncementBean(Long l, String str, Long l2, String str2) {
        this.announcementId = l;
        this.subject = str;
        this.publishedOn = l2;
        this.fileName = str2;
    }

    public Long getAnnouncementId() {
        return this.announcementId;
    }

    public void setAnnouncementId(Long l) {
        this.announcementId = l;
    }

    public String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public void setDefaultLanguage(String str) {
        this.defaultLanguage = str;
    }

    public String getSubject() {
        return this.subject;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public Long getPublishedOn() {
        return this.publishedOn;
    }

    public void setPublishedOn(Long l) {
        this.publishedOn = l;
    }

    public String getIsDownloaded() {
        return this.isDownloaded;
    }

    public void setIsDownloaded(String str) {
        this.isDownloaded = str;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public int getIsPlayedAnnouncement() {
        return this.isPlayedAnnouncement;
    }

    public void setIsPlayedAnnouncement(int i) {
        this.isPlayedAnnouncement = i;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "AnnouncementBean{announcementId=" + this.announcementId + ", defaultLanguage=" + this.defaultLanguage + ", subject=" + this.subject + ", publishedOn=" + this.publishedOn + ", isDownloaded=" + this.isDownloaded + ", fileName=" + this.fileName + ", isPlayedAnnouncement=" + this.isPlayedAnnouncement + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof AnnouncementBean)) {
            return this.announcementId.equals(((AnnouncementBean) obj).announcementId);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
