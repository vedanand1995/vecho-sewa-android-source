package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import java.util.List;

/* loaded from: classes.dex */
public class PagingListView extends ListView {
    private boolean hasMoreItems;
    private boolean isLoading;
    private LoadingView loadingView;
    private AbsListView.OnScrollListener onScrollListener;
    private PagingListener pagingListener;

    public interface PagingListener {

        /* renamed from: com.argusoft.sewa.android.app.component.PagingListView$PagingListener$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            public static void $default$performActionOnClick(PagingListener _this, int i, List list) {
            }
        }

        void onLoadMoreItems();

        void performActionOnClick(int i, List<ListItemDataBean> list);
    }

    public PagingListView(Context context) {
        super(context);
        init();
    }

    public PagingListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PagingListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public void setIsLoading(boolean z) {
        this.isLoading = z;
    }

    public void setPagingListener(PagingListener pagingListener) {
        this.pagingListener = pagingListener;
    }

    public void setHasMoreItems(boolean z) {
        this.hasMoreItems = z;
        if (!z) {
            removeFooterView(this.loadingView);
        } else if (findViewById(R.id.loading_view) == null) {
            addFooterView(this.loadingView);
            setAdapter(((HeaderViewListAdapter) getAdapter()).getWrappedAdapter());
        }
    }

    public void onFinishLoadingWithItem(boolean z, List<ListItemDataBean> list) {
        setHasMoreItems(z);
        setIsLoading(false);
        if (list == null || list.isEmpty()) {
            return;
        }
        ListAdapter wrappedAdapter = ((HeaderViewListAdapter) getAdapter()).getWrappedAdapter();
        if (wrappedAdapter instanceof PagingAdapter) {
            ((PagingAdapter) wrappedAdapter).addMoreItems(list);
        }
    }

    private void init() {
        this.isLoading = false;
        LoadingView loadingView = new LoadingView(getContext());
        this.loadingView = loadingView;
        addFooterView(loadingView);
        super.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.argusoft.sewa.android.app.component.PagingListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (PagingListView.this.onScrollListener != null) {
                    PagingListView.this.onScrollListener.onScrollStateChanged(absListView, i);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (PagingListView.this.onScrollListener != null) {
                    PagingListView.this.onScrollListener.onScroll(absListView, i, i2, i3);
                }
                int i4 = i + i2;
                if (PagingListView.this.isLoading || !PagingListView.this.hasMoreItems || PagingListView.this.pagingListener == null || i4 != i3) {
                    return;
                }
                PagingListView.this.isLoading = true;
                PagingListView.this.pagingListener.onLoadMoreItems();
            }
        });
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.onScrollListener = onScrollListener;
    }
}
