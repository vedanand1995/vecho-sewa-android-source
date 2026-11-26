package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class MergedFamiliesBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String expandedFamilyId;

    @DatabaseField
    private boolean isSyncedWithServer;

    @DatabaseField
    private String mergedFamilyId;

    public MergedFamiliesBean() {
    }

    public MergedFamiliesBean(String str, String str2, boolean z) {
        this.mergedFamilyId = str;
        this.expandedFamilyId = str2;
        this.isSyncedWithServer = z;
    }

    public String getMergedFamilyId() {
        return this.mergedFamilyId;
    }

    public void setMergedFamilyId(String str) {
        this.mergedFamilyId = str;
    }

    public String getExpandedFamilyId() {
        return this.expandedFamilyId;
    }

    public void setExpandedFamilyId(String str) {
        this.expandedFamilyId = str;
    }

    public boolean isSyncedWithServer() {
        return this.isSyncedWithServer;
    }

    public void setSyncedWithServer(boolean z) {
        this.isSyncedWithServer = z;
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
