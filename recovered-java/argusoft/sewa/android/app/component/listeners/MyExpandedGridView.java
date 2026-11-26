package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

/* loaded from: classes.dex */
public class MyExpandedGridView extends GridView {
    private boolean expanded;

    public MyExpandedGridView(Context context) {
        super(context);
        this.expanded = false;
    }

    public MyExpandedGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expanded = false;
    }

    public MyExpandedGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.expanded = false;
    }

    public MyExpandedGridView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.expanded = false;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (isExpanded()) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i, i2);
    }

    private boolean isExpanded() {
        return this.expanded;
    }

    public void setExpanded(boolean z) {
        this.expanded = z;
    }
}
