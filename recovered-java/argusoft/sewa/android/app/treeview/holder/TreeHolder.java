package com.argusoft.sewa.android.app.treeview.holder;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.treeview.model.TreeNode;

/* loaded from: classes.dex */
public class TreeHolder extends TreeNode.BaseNodeViewHolder<IconTreeItem> {
    public static final int DEFAULT = 0;
    int child;
    ImageView img;
    boolean isCompleted;
    int leftMargin;
    boolean toggle;
    TextView tvValue;
    View view;

    public TreeHolder(Context context, boolean z, int i, int i2) {
        super(context);
        this.toggle = z;
        this.child = i;
        this.leftMargin = i2;
    }

    @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.BaseNodeViewHolder
    public View createNodeView(TreeNode treeNode, IconTreeItem iconTreeItem) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.context);
        int i = this.child;
        if (i == 0) {
            this.view = layoutInflaterFrom.inflate(R.layout.parent, (ViewGroup) null, false);
        } else {
            this.view = layoutInflaterFrom.inflate(i, (ViewGroup) null, false);
        }
        if (this.leftMargin == 0) {
            this.leftMargin = 20;
        }
        this.view.setPadding(this.leftMargin, 20, 20, 20);
        this.img = (ImageView) this.view.findViewById(R.id.image);
        this.tvValue = (TextView) this.view.findViewById(R.id.text);
        this.isCompleted = iconTreeItem.isCompleted;
        this.img.setImageResource(iconTreeItem.icon);
        this.tvValue.setText(iconTreeItem.text);
        if (Boolean.TRUE.equals(Boolean.valueOf(this.isCompleted))) {
            this.tvValue.setTextColor(this.context.getResources().getColor(R.color.hofTextColor));
        }
        return this.view;
    }

    @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.BaseNodeViewHolder
    public void toggle(boolean z) {
        if (this.toggle) {
            this.img.setImageResource(z ? R.drawable.ic_arrow_down : R.drawable.ic_arrow_right);
        }
    }

    public static class IconTreeItem {
        public int icon;
        public boolean isCompleted;
        public String text;

        public IconTreeItem(int i, String str, boolean z) {
            this.icon = i;
            this.text = str;
            this.isCompleted = z;
        }
    }

    private int getDimens(int i) {
        return (int) (this.context.getResources().getDimension(i) / this.context.getResources().getDisplayMetrics().density);
    }
}
