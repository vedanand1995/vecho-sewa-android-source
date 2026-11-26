package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.LibraryBean;

/* loaded from: classes.dex */
public class LibraryDataBean {
    private Long actualId;
    private String category;
    private String description;
    private String fileName;
    private String fileType;
    private Boolean isDownloaded;
    private Long modifiedOn;
    private Long roleId;
    private String state;

    public LibraryDataBean(LibraryBean libraryBean) {
        this.actualId = libraryBean.getActualId();
        this.category = libraryBean.getCategory();
        this.fileName = libraryBean.getFileName();
        this.fileType = libraryBean.getFileType();
        this.isDownloaded = Boolean.valueOf(libraryBean.getIsDownloaded());
        this.state = libraryBean.getState();
        this.description = libraryBean.getDescription();
        if (libraryBean.getModifiedOn() != null) {
            this.modifiedOn = Long.valueOf(libraryBean.getModifiedOn().getTime());
        }
    }

    public Long getActualId() {
        return this.actualId;
    }

    public void setActualId(Long l) {
        this.actualId = l;
    }

    public Long getRoleId() {
        return this.roleId;
    }

    public void setRoleId(Long l) {
        this.roleId = l;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getFileType() {
        return this.fileType;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public Long getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Long l) {
        this.modifiedOn = l;
    }

    public Boolean getIsDownloaded() {
        return this.isDownloaded;
    }

    public void setIsDownloaded(Boolean bool) {
        this.isDownloaded = bool;
    }
}
