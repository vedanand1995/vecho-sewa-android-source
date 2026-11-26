package com.argusoft.sewa.android.app.databean;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class LibraryScreenDataBean {
    public final Bitmap image;
    public final String name;

    public LibraryScreenDataBean(Bitmap bitmap, String str) {
        this.image = bitmap;
        this.name = str;
    }

    public String toString() {
        return "LibraryScreenDataBean{image=" + this.image + ", name='" + this.name + "'}";
    }
}
