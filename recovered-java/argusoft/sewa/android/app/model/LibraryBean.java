package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.LibraryDataBean;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LibraryBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Long actualId;

    @DatabaseField
    private String category;

    @DatabaseField
    private String description;

    @DatabaseField
    private String fileName;

    @DatabaseField
    private String fileType;

    @DatabaseField
    private boolean isDownloaded;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String state;

    public LibraryBean() {
    }

    public LibraryBean(LibraryDataBean libraryDataBean) {
        this.actualId = libraryDataBean.getActualId();
        this.category = libraryDataBean.getCategory();
        this.fileName = libraryDataBean.getFileName();
        this.fileType = libraryDataBean.getFileType();
        this.state = libraryDataBean.getState();
        this.description = libraryDataBean.getDescription();
        this.isDownloaded = libraryDataBean.getIsDownloaded() != null && libraryDataBean.getIsDownloaded().booleanValue();
        if (libraryDataBean.getModifiedOn() != null) {
            this.modifiedOn = new Date(libraryDataBean.getModifiedOn().longValue());
        }
    }

    public Long getActualId() {
        return this.actualId;
    }

    public void setActualId(Long l) {
        this.actualId = l;
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public boolean getIsDownloaded() {
        return this.isDownloaded;
    }

    public void setIsDownloaded(boolean z) {
        this.isDownloaded = z;
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
