package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.R;

/* loaded from: classes.dex */
public class LoadingView extends LinearLayout {
    public LoadingView(Context context) {
        super(context);
        init();
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        inflate(getContext(), R.layout.loading_layout, this);
    }
}
