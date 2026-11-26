package com.argusoft.sewa.android.app.treeview.model;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.treeview.view.AndroidTreeView;
import com.argusoft.sewa.android.app.treeview.view.TreeNodeWrapperView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class TreeNode {
    public static final String NODES_ID_SEPARATOR = ":";
    private TreeNodeClickListener mClickListener;
    private boolean mExpanded;
    private int mId;
    private int mLastId;
    private TreeNodeLongClickListener mLongClickListener;
    private TreeNode mParent;
    private boolean mSelected;
    private Object mValue;
    private BaseNodeViewHolder mViewHolder;
    private boolean mSelectable = true;
    private final List<TreeNode> children = new ArrayList();

    public interface TreeNodeClickListener {
        void onClick(TreeNode treeNode, Object obj);
    }

    public interface TreeNodeLongClickListener {
        boolean onLongClick(TreeNode treeNode, Object obj);
    }

    public static TreeNode root() {
        TreeNode treeNode = new TreeNode(null);
        treeNode.setSelectable(false);
        return treeNode;
    }

    private int generateId() {
        int i = this.mLastId + 1;
        this.mLastId = i;
        return i;
    }

    public TreeNode(Object obj) {
        this.mValue = obj;
    }

    public TreeNode addChild(TreeNode treeNode) {
        treeNode.mParent = this;
        treeNode.mId = generateId();
        this.children.add(treeNode);
        return this;
    }

    public TreeNode addChildren(TreeNode... treeNodeArr) {
        for (TreeNode treeNode : treeNodeArr) {
            addChild(treeNode);
        }
        return this;
    }

    public TreeNode addChildren(Collection<TreeNode> collection) {
        Iterator<TreeNode> it = collection.iterator();
        while (it.hasNext()) {
            addChild(it.next());
        }
        return this;
    }

    public int deleteChild(TreeNode treeNode) {
        for (int i = 0; i < this.children.size(); i++) {
            if (treeNode.mId == this.children.get(i).mId) {
                this.children.remove(i);
                return i;
            }
        }
        return -1;
    }

    public List<TreeNode> getChildren() {
        return Collections.unmodifiableList(this.children);
    }

    public int size() {
        return this.children.size();
    }

    public TreeNode getParent() {
        return this.mParent;
    }

    public int getId() {
        return this.mId;
    }

    public boolean isLeaf() {
        return size() == 0;
    }

    public Object getValue() {
        return this.mValue;
    }

    public boolean isExpanded() {
        return this.mExpanded;
    }

    public TreeNode setExpanded(boolean z) {
        this.mExpanded = z;
        return this;
    }

    public void setSelected(boolean z) {
        this.mSelected = z;
    }

    public boolean isSelected() {
        return this.mSelectable && this.mSelected;
    }

    public void setSelectable(boolean z) {
        this.mSelectable = z;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        TreeNode treeNode = this;
        while (treeNode.mParent != null) {
            sb.append(treeNode.getId());
            treeNode = treeNode.mParent;
            if (treeNode.mParent != null) {
                sb.append(":");
            }
        }
        return sb.toString();
    }

    public int getLevel() {
        int i = 0;
        TreeNode treeNode = this;
        while (true) {
            treeNode = treeNode.mParent;
            if (treeNode == null) {
                return i;
            }
            i++;
        }
    }

    public boolean isLastChild() {
        int size;
        return !isRoot() && (size = this.mParent.children.size()) > 0 && this.mParent.children.get(size - 1).mId == this.mId;
    }

    public TreeNode setViewHolder(BaseNodeViewHolder baseNodeViewHolder) {
        this.mViewHolder = baseNodeViewHolder;
        if (baseNodeViewHolder != null) {
            baseNodeViewHolder.mNode = this;
        }
        return this;
    }

    public TreeNode setClickListener(TreeNodeClickListener treeNodeClickListener) {
        this.mClickListener = treeNodeClickListener;
        return this;
    }

    public TreeNodeClickListener getClickListener() {
        return this.mClickListener;
    }

    public TreeNode setLongClickListener(TreeNodeLongClickListener treeNodeLongClickListener) {
        this.mLongClickListener = treeNodeLongClickListener;
        return this;
    }

    public TreeNodeLongClickListener getLongClickListener() {
        return this.mLongClickListener;
    }

    public BaseNodeViewHolder getViewHolder() {
        return this.mViewHolder;
    }

    public boolean isFirstChild() {
        return !isRoot() && this.mParent.children.get(0).mId == this.mId;
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public TreeNode getRoot() {
        TreeNode treeNode = this;
        while (true) {
            TreeNode treeNode2 = treeNode.mParent;
            if (treeNode2 == null) {
                return treeNode;
            }
            treeNode = treeNode2;
        }
    }

    public static abstract class BaseNodeViewHolder<E> {
        protected int containerStyle;
        protected Context context;
        protected TreeNode mNode;
        private View mView;
        protected AndroidTreeView tView;

        public abstract View createNodeView(TreeNode treeNode, E e);

        public void toggle(boolean z) {
        }

        public void toggleSelectionMode(boolean z) {
        }

        public BaseNodeViewHolder(Context context) {
            this.context = context;
        }

        public View getView() {
            View view = this.mView;
            if (view != null) {
                return view;
            }
            View nodeView = getNodeView();
            TreeNodeWrapperView treeNodeWrapperView = new TreeNodeWrapperView(nodeView.getContext(), getContainerStyle());
            treeNodeWrapperView.insertNodeView(nodeView);
            this.mView = treeNodeWrapperView;
            return treeNodeWrapperView;
        }

        public void setTreeView(AndroidTreeView androidTreeView) {
            this.tView = androidTreeView;
        }

        public AndroidTreeView getTreeView() {
            return this.tView;
        }

        public void setContainerStyle(int i) {
            this.containerStyle = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public View getNodeView() {
            TreeNode treeNode = this.mNode;
            return createNodeView(treeNode, treeNode.getValue());
        }

        public ViewGroup getNodeItemsView() {
            return (ViewGroup) getView().findViewById(R.id.node_items);
        }

        public boolean isInitialized() {
            return this.mView != null;
        }

        public int getContainerStyle() {
            return this.containerStyle;
        }
    }
}
