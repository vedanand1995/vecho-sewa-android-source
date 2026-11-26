package com.argusoft.sewa.android.app.util.nutrition;

/* loaded from: classes.dex */
public class WaRef {
    public final float median;
    public final float sdMinus1;
    public final float sdMinus2;
    public final float sdMinus3;
    public final float sdPlus1;
    public final float sdPlus2;
    public final float sdPlus3;

    public WaRef(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        this.sdMinus3 = f;
        this.sdMinus2 = f2;
        this.sdMinus1 = f3;
        this.median = f4;
        this.sdPlus1 = f5;
        this.sdPlus2 = f6;
        this.sdPlus3 = f7;
    }
}
