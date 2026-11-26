package com.argusoft.sewa.android.app.treeview.view;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.argusoft.sewa.android.app.R;

/* loaded from: classes.dex */
public class TreeNodeWrapperView extends LinearLayout {
    private final int containerStyle;
    private ViewGroup nodeContainer;
    private LinearLayout nodeItemsContainer;

    public TreeNodeWrapperView(Context context, int i) {
        super(context);
        this.containerStyle = i;
        init();
    }

    private void init() {
        setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.nodeContainer = relativeLayout;
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.nodeContainer.setId(R.id.node_header);
        LinearLayout linearLayout = new LinearLayout(new ContextThemeWrapper(getContext(), this.containerStyle), null, this.containerStyle);
        this.nodeItemsContainer = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.nodeItemsContainer.setId(R.id.node_items);
        this.nodeItemsContainer.setOrientation(1);
        this.nodeItemsContainer.setVisibility(8);
        addView(this.nodeContainer);
        addView(this.nodeItemsContainer);
    }

    public void insertNodeView(View view) {
        this.nodeContainer.addView(view);
    }

    public ViewGroup getNodeContainer() {
        return this.nodeContainer;
    }
}
