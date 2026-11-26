package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class FormAccessibilityBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String form;

    @DatabaseField
    private String formCode;

    @DatabaseField
    private Boolean isTrainingReq;

    @DatabaseField
    private Boolean readyToMoveProduction;

    @DatabaseField
    private String state;

    public String getFormCode() {
        return this.formCode;
    }

    public void setFormCode(String str) {
        this.formCode = str;
    }

    public String getForm() {
        return this.form;
    }

    public void setForm(String str) {
        this.form = str;
    }

    public Boolean getTrainingReq() {
        return this.isTrainingReq;
    }

    public void setTrainingReq(Boolean bool) {
        this.isTrainingReq = bool;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public Boolean getReadyToMoveProduction() {
        return this.readyToMoveProduction;
    }

    public void setReadyToMoveProduction(Boolean bool) {
        this.readyToMoveProduction = bool;
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
