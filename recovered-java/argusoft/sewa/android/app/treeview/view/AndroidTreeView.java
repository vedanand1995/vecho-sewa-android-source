package com.argusoft.sewa.android.app.treeview.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.treeview.holder.TreeHolder;
import com.argusoft.sewa.android.app.treeview.model.TreeNode;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class AndroidTreeView {
    private static final String NODES_PATH_SEPARATOR = ";";
    private boolean applyForRoot;
    private Context mContext;
    protected TreeNode mRoot;
    private boolean mSelectionModeEnabled;
    private TreeNode.TreeNodeClickListener nodeClickListener;
    private TreeNode.TreeNodeLongClickListener nodeLongClickListener;
    private int containerStyle = 0;
    private Class<? extends TreeNode.BaseNodeViewHolder> defaultViewHolderClass = TreeHolder.class;
    private boolean mUseDefaultAnimation = false;
    private boolean use2dScroll = false;
    private boolean enableAutoToggle = true;

    public AndroidTreeView(Context context) {
        this.mContext = context;
    }

    public void setRoot(TreeNode treeNode) {
        this.mRoot = treeNode;
    }

    public AndroidTreeView(Context context, TreeNode treeNode) {
        this.mRoot = treeNode;
        this.mContext = context;
    }

    public void setDefaultAnimation(boolean z) {
        this.mUseDefaultAnimation = z;
    }

    public void setDefaultContainerStyle(int i) {
        setDefaultContainerStyle(i, false);
    }

    public void setDefaultContainerStyle(int i, boolean z) {
        this.containerStyle = i;
        this.applyForRoot = z;
    }

    public void setUse2dScroll(boolean z) {
        this.use2dScroll = z;
    }

    public boolean is2dScrollEnabled() {
        return this.use2dScroll;
    }

    public void setUseAutoToggle(boolean z) {
        this.enableAutoToggle = z;
    }

    public boolean isAutoToggleEnabled() {
        return this.enableAutoToggle;
    }

    public void setDefaultViewHolder(Class<? extends TreeNode.BaseNodeViewHolder> cls) {
        this.defaultViewHolderClass = cls;
    }

    public void setDefaultNodeClickListener(TreeNode.TreeNodeClickListener treeNodeClickListener) {
        this.nodeClickListener = treeNodeClickListener;
    }

    public void setDefaultNodeLongClickListener(TreeNode.TreeNodeLongClickListener treeNodeLongClickListener) {
        this.nodeLongClickListener = treeNodeLongClickListener;
    }

    public void expandAll() throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        expandNode(this.mRoot, true);
    }

    public void collapseAll() throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Iterator<TreeNode> it = this.mRoot.getChildren().iterator();
        while (it.hasNext()) {
            collapseNode(it.next(), true);
        }
    }

    public View getView(int i) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        FrameLayout twoDScrollView;
        if (i > 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.mContext, i);
            twoDScrollView = this.use2dScroll ? new TwoDScrollView(contextThemeWrapper) : new ScrollView(contextThemeWrapper);
        } else {
            twoDScrollView = this.use2dScroll ? new TwoDScrollView(this.mContext) : new ScrollView(this.mContext);
        }
        Context contextThemeWrapper2 = this.mContext;
        if (this.containerStyle != 0 && this.applyForRoot) {
            contextThemeWrapper2 = new ContextThemeWrapper(this.mContext, this.containerStyle);
        }
        final LinearLayout linearLayout = new LinearLayout(contextThemeWrapper2, null, this.containerStyle);
        linearLayout.setId(R.id.tree_items);
        linearLayout.setOrientation(1);
        twoDScrollView.addView(linearLayout);
        this.mRoot.setViewHolder(new TreeNode.BaseNodeViewHolder(this.mContext) { // from class: com.argusoft.sewa.android.app.treeview.view.AndroidTreeView.1
            @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.BaseNodeViewHolder
            public View createNodeView(TreeNode treeNode, Object obj) {
                return null;
            }

            @Override // com.argusoft.sewa.android.app.treeview.model.TreeNode.BaseNodeViewHolder
            public ViewGroup getNodeItemsView() {
                return linearLayout;
            }
        });
        expandNode(this.mRoot, false);
        return twoDScrollView;
    }

    public View getView() {
        return getView(-1);
    }

    public void expandLevel(int i) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Iterator<TreeNode> it = this.mRoot.getChildren().iterator();
        while (it.hasNext()) {
            expandLevel(it.next(), i);
        }
    }

    private void expandLevel(TreeNode treeNode, int i) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        if (treeNode.getLevel() <= i) {
            expandNode(treeNode, false);
        }
        Iterator<TreeNode> it = treeNode.getChildren().iterator();
        while (it.hasNext()) {
            expandLevel(it.next(), i);
        }
    }

    public void expandNode(TreeNode treeNode) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        expandNode(treeNode, false);
    }

    public void collapseNode(TreeNode treeNode) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        collapseNode(treeNode, false);
    }

    public String getSaveState() {
        StringBuilder sb = new StringBuilder();
        getSaveState(this.mRoot, sb);
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public void restoreState(String str) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        collapseAll();
        restoreNodeState(this.mRoot, new HashSet(Arrays.asList(str.split(NODES_PATH_SEPARATOR))));
    }

    private void restoreNodeState(TreeNode treeNode, Set<String> set) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            if (set.contains(treeNode2.getPath())) {
                expandNode(treeNode2);
                restoreNodeState(treeNode2, set);
            }
        }
    }

    private void getSaveState(TreeNode treeNode, StringBuilder sb) {
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            if (treeNode2.isExpanded()) {
                sb.append(treeNode2.getPath());
                sb.append(NODES_PATH_SEPARATOR);
                getSaveState(treeNode2, sb);
            }
        }
    }

    public void toggleNode(TreeNode treeNode) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        if (treeNode.isExpanded()) {
            collapseNode(treeNode, false);
        } else {
            expandNode(treeNode, false);
        }
    }

    private void collapseNode(TreeNode treeNode, boolean z) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        treeNode.setExpanded(false);
        TreeNode.BaseNodeViewHolder viewHolderForNode = getViewHolderForNode(treeNode);
        if (this.mUseDefaultAnimation) {
            collapse(viewHolderForNode.getNodeItemsView());
        } else {
            viewHolderForNode.getNodeItemsView().setVisibility(8);
        }
        viewHolderForNode.toggle(false);
        if (z) {
            Iterator<TreeNode> it = treeNode.getChildren().iterator();
            while (it.hasNext()) {
                collapseNode(it.next(), z);
            }
        }
    }

    private void expandNode(TreeNode treeNode, boolean z) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        treeNode.setExpanded(true);
        TreeNode.BaseNodeViewHolder viewHolderForNode = getViewHolderForNode(treeNode);
        viewHolderForNode.getNodeItemsView().removeAllViews();
        viewHolderForNode.toggle(true);
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            addNode(viewHolderForNode.getNodeItemsView(), treeNode2);
            if (treeNode2.isExpanded() || z) {
                expandNode(treeNode2, z);
            }
        }
        if (this.mUseDefaultAnimation) {
            expand(viewHolderForNode.getNodeItemsView());
        } else {
            viewHolderForNode.getNodeItemsView().setVisibility(0);
        }
    }

    private void addNode(ViewGroup viewGroup, final TreeNode treeNode) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        TreeNode.BaseNodeViewHolder viewHolderForNode = getViewHolderForNode(treeNode);
        View view = viewHolderForNode.getView();
        viewGroup.addView(view);
        boolean z = this.mSelectionModeEnabled;
        if (z) {
            viewHolderForNode.toggleSelectionMode(z);
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.treeview.view.AndroidTreeView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
                if (treeNode.getClickListener() == null) {
                    if (AndroidTreeView.this.nodeClickListener != null) {
                        TreeNode.TreeNodeClickListener treeNodeClickListener = AndroidTreeView.this.nodeClickListener;
                        TreeNode treeNode2 = treeNode;
                        treeNodeClickListener.onClick(treeNode2, treeNode2.getValue());
                    }
                } else {
                    TreeNode.TreeNodeClickListener clickListener = treeNode.getClickListener();
                    TreeNode treeNode3 = treeNode;
                    clickListener.onClick(treeNode3, treeNode3.getValue());
                }
                if (AndroidTreeView.this.enableAutoToggle) {
                    AndroidTreeView.this.toggleNode(treeNode);
                }
            }
        });
        view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.argusoft.sewa.android.app.treeview.view.AndroidTreeView.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view2) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
                if (treeNode.getLongClickListener() == null) {
                    if (AndroidTreeView.this.nodeLongClickListener != null) {
                        TreeNode.TreeNodeLongClickListener treeNodeLongClickListener = AndroidTreeView.this.nodeLongClickListener;
                        TreeNode treeNode2 = treeNode;
                        return treeNodeLongClickListener.onLongClick(treeNode2, treeNode2.getValue());
                    }
                    if (!AndroidTreeView.this.enableAutoToggle) {
                        return false;
                    }
                    AndroidTreeView.this.toggleNode(treeNode);
                    return false;
                }
                TreeNode.TreeNodeLongClickListener longClickListener = treeNode.getLongClickListener();
                TreeNode treeNode3 = treeNode;
                return longClickListener.onLongClick(treeNode3, treeNode3.getValue());
            }
        });
    }

    public void setSelectionModeEnabled(boolean z) {
        if (!z) {
            deselectAll();
        }
        this.mSelectionModeEnabled = z;
        Iterator<TreeNode> it = this.mRoot.getChildren().iterator();
        while (it.hasNext()) {
            toggleSelectionMode(it.next(), z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E> List<E> getSelectedValues(Class<E> cls) {
        ArrayList arrayList = new ArrayList();
        Iterator<TreeNode> it = getSelected().iterator();
        while (it.hasNext()) {
            Object value = it.next().getValue();
            if (value != null && value.getClass().equals(cls)) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public boolean isSelectionModeEnabled() {
        return this.mSelectionModeEnabled;
    }

    private void toggleSelectionMode(TreeNode treeNode, boolean z) {
        toogleSelectionForNode(treeNode, z);
        if (treeNode.isExpanded()) {
            Iterator<TreeNode> it = treeNode.getChildren().iterator();
            while (it.hasNext()) {
                toggleSelectionMode(it.next(), z);
            }
        }
    }

    public List<TreeNode> getSelected() {
        if (this.mSelectionModeEnabled) {
            return getSelected(this.mRoot);
        }
        return new ArrayList();
    }

    private List<TreeNode> getSelected(TreeNode treeNode) {
        ArrayList arrayList = new ArrayList();
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            if (treeNode2.isSelected()) {
                arrayList.add(treeNode2);
            }
            arrayList.addAll(getSelected(treeNode2));
        }
        return arrayList;
    }

    public void selectAll(boolean z) {
        makeAllSelection(true, z);
    }

    public void deselectAll() {
        makeAllSelection(false, false);
    }

    private void makeAllSelection(boolean z, boolean z2) {
        if (this.mSelectionModeEnabled) {
            Iterator<TreeNode> it = this.mRoot.getChildren().iterator();
            while (it.hasNext()) {
                selectNode(it.next(), z, z2);
            }
        }
    }

    public void selectNode(TreeNode treeNode, boolean z) {
        if (this.mSelectionModeEnabled) {
            treeNode.setSelected(z);
            toogleSelectionForNode(treeNode, true);
        }
    }

    private void selectNode(TreeNode treeNode, boolean z, boolean z2) {
        treeNode.setSelected(z);
        toogleSelectionForNode(treeNode, true);
        if (z2 ? treeNode.isExpanded() : true) {
            Iterator<TreeNode> it = treeNode.getChildren().iterator();
            while (it.hasNext()) {
                selectNode(it.next(), z, z2);
            }
        }
    }

    private void toogleSelectionForNode(TreeNode treeNode, boolean z) {
        if (getViewHolderForNode(treeNode).isInitialized()) {
            getViewHolderForNode(treeNode).toggleSelectionMode(z);
        }
    }

    private TreeNode.BaseNodeViewHolder getViewHolderForNode(TreeNode treeNode) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        TreeNode.BaseNodeViewHolder viewHolder = treeNode.getViewHolder();
        if (viewHolder == null) {
            try {
                viewHolder = this.defaultViewHolderClass.getConstructor(Context.class).newInstance(this.mContext);
                treeNode.setViewHolder(viewHolder);
            } catch (Exception unused) {
                throw new RuntimeException("Could not instantiate class " + this.defaultViewHolderClass);
            }
        }
        if (viewHolder.getContainerStyle() <= 0) {
            viewHolder.setContainerStyle(this.containerStyle);
        }
        if (viewHolder.getTreeView() == null) {
            viewHolder.setTreeView(this);
        }
        return viewHolder;
    }

    private static void expand(final View view) {
        view.measure(-1, -2);
        final int measuredHeight = view.getMeasuredHeight();
        view.getLayoutParams().height = 0;
        view.setVisibility(0);
        Animation animation = new Animation() { // from class: com.argusoft.sewa.android.app.treeview.view.AndroidTreeView.4
            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                view.getLayoutParams().height = f == 1.0f ? -2 : (int) (measuredHeight * f);
                view.requestLayout();
            }
        };
        animation.setDuration((int) (measuredHeight / view.getContext().getResources().getDisplayMetrics().density));
        view.startAnimation(animation);
    }

    private static void collapse(final View view) {
        final int measuredHeight = view.getMeasuredHeight();
        Animation animation = new Animation() { // from class: com.argusoft.sewa.android.app.treeview.view.AndroidTreeView.5
            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                if (f == 1.0f) {
                    view.setVisibility(8);
                    return;
                }
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int i = measuredHeight;
                layoutParams.height = i - ((int) (i * f));
                view.requestLayout();
            }
        };
        animation.setDuration((int) (measuredHeight / view.getContext().getResources().getDisplayMetrics().density));
        view.startAnimation(animation);
    }

    public void addNode(TreeNode treeNode, TreeNode treeNode2) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        treeNode.addChild(treeNode2);
        if (treeNode.isExpanded()) {
            addNode(getViewHolderForNode(treeNode).getNodeItemsView(), treeNode2);
        }
    }

    public void removeNode(TreeNode treeNode) {
        if (treeNode.getParent() != null) {
            TreeNode parent = treeNode.getParent();
            int iDeleteChild = parent.deleteChild(treeNode);
            if (!parent.isExpanded() || iDeleteChild < 0) {
                return;
            }
            getViewHolderForNode(parent).getNodeItemsView().removeViewAt(iDeleteChild);
        }
    }
}
