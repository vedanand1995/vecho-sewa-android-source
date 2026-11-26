package com.argusoft.sewa.android.app.util.nutrition;

/* loaded from: classes.dex */
public class WhRef {
    public final float median;
    public final float sdMinus2;
    public final float sdMinus3;

    public WhRef(float f, float f2, float f3) {
        this.sdMinus3 = f;
        this.sdMinus2 = f2;
        this.median = f3;
    }
}
