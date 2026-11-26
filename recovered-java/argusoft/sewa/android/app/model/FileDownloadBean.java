package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class FileDownloadBean extends BaseEntity {

    @DatabaseField
    private String extension;

    @DatabaseField
    private String fileName;

    @DatabaseField
    private Boolean isDownloaded;

    @DatabaseField
    private Long mediaId;

    @DatabaseField
    private Integer noOfAttempt;

    public FileDownloadBean() {
    }

    public FileDownloadBean(Long l, String str, String str2, Integer num, Boolean bool) {
        this.mediaId = l;
        this.fileName = str;
        this.extension = str2;
        this.noOfAttempt = num;
        this.isDownloaded = bool;
    }

    public Long getMediaId() {
        return this.mediaId;
    }

    public void setMediaId(Long l) {
        this.mediaId = l;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getExtension() {
        return this.extension;
    }

    public void setExtension(String str) {
        this.extension = str;
    }

    public Integer getNoOfAttempt() {
        return this.noOfAttempt;
    }

    public void setNoOfAttempt(Integer num) {
        this.noOfAttempt = num;
    }

    public Boolean getDownloaded() {
        return this.isDownloaded;
    }

    public void setDownloaded(Boolean bool) {
        this.isDownloaded = bool;
    }

    public String toString() {
        return "FileDownloadBean{mediaId=" + this.mediaId + ", fileName='" + this.fileName + "', extension='" + this.extension + "', noOfAttempt=" + this.noOfAttempt + ", isDownloaded=" + this.isDownloaded + '}';
    }
}
