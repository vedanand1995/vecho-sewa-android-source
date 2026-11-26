package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;

/* loaded from: classes.dex */
public class MyExpandedListView extends ListView {
    private boolean expanded;

    public MyExpandedListView(Context context) {
        super(context);
        this.expanded = false;
    }

    public MyExpandedListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expanded = false;
    }

    public MyExpandedListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.expanded = false;
    }

    private boolean isExpanded() {
        return this.expanded;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (isExpanded()) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setExpanded(boolean z) {
        this.expanded = z;
    }
}
