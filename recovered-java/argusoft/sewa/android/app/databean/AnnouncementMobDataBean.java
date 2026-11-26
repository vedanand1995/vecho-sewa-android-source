package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class AnnouncementMobDataBean {
    private Long announcementId;
    private String defaultLanguage;
    private String fileName;
    private boolean isActive;
    private Long lastUpdateOfAnnouncement;
    private Date modifiedOn;
    private Long publishedOn;
    private String subject;

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

    public Long getLastUpdateOfAnnouncement() {
        return this.lastUpdateOfAnnouncement;
    }

    public void setLastUpdateOfAnnouncement(Long l) {
        this.lastUpdateOfAnnouncement = l;
    }

    public boolean isIsActive() {
        return this.isActive;
    }

    public void setIsActive(boolean z) {
        this.isActive = z;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "AnnouncementMobDataBean{subject='" + this.subject + "', publishedOn=" + this.publishedOn + ", announcementId=" + this.announcementId + ", defaultLanguage='" + this.defaultLanguage + "', isActive=" + this.isActive + ", lastUpdateOfAnnouncement=" + this.lastUpdateOfAnnouncement + ", fileName='" + this.fileName + "'}";
    }
}
