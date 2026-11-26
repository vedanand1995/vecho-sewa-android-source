package com.argusoft.sewa.android.app.databean;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class LmsScreenDataBean {
    public final Long actualId;
    public final Bitmap image;
    public final boolean isBookMarked;
    public final String name;

    public LmsScreenDataBean(Bitmap bitmap, String str, Long l, boolean z) {
        this.image = bitmap;
        this.name = str;
        this.actualId = l;
        this.isBookMarked = z;
    }
}
