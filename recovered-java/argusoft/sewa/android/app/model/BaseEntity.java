package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;

/* loaded from: classes.dex */
public abstract class BaseEntity {

    @DatabaseField(columnName = "_ID", id = true)
    protected Integer id;

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BaseEntity)) {
            return ((BaseEntity) obj).id.equals(this.id);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
