package com.argusoft.sewa.android.app.activity.DueList.PNC;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
public class DueListPNCFragment extends Fragment {
    private DueListPNCAdapter adapter;
    String argText;
    private String fromDate;
    private TextView noDataText;
    private RecyclerView recyclerView;
    List<Integer> selectedVillageIds;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private String toDate;
    private List<LinkedHashMap<String, Object>> members = new ArrayList();
    private int limit = 30;
    private int offset = 0;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_simple, viewGroup, false);
        this.recyclerView = (RecyclerView) viewInflate.findViewById(R.id.member_recycler_view);
        this.adapter = new DueListPNCAdapter(this.members);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.recyclerView.setAdapter(this.adapter);
        TextView textView = (TextView) viewInflate.findViewById(R.id.no_data_text);
        this.noDataText = textView;
        if (this.fromDate == null && this.toDate == null) {
            textView.setText(R.string.select_month_to_get_data);
        } else {
            textView.setText(R.string.no_records_found);
        }
        setupScrollListener();
        fetchNextPage();
        return viewInflate;
    }

    public void onDateRangeSelected(String str, String str2, List<Integer> list) {
        this.fromDate = str;
        this.toDate = str2;
        this.offset = 0;
        this.selectedVillageIds = list;
        this.members.clear();
        this.adapter.updateData(this.members);
        fetchNextPage();
    }

    private void setupScrollListener() {
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.argusoft.sewa.android.app.activity.DueList.PNC.DueListPNCFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                if (linearLayoutManager == null || DueListPNCFragment.this.adapter.isLoading || !DueListPNCFragment.this.adapter.hasMoreData || linearLayoutManager.findLastVisibleItemPosition() < DueListPNCFragment.this.adapter.getItemCount() - 2) {
                    return;
                }
                DueListPNCFragment.this.fetchNextPage();
            }
        });
    }

    void fetchNextPage() {
        try {
            if (this.fromDate == null || this.toDate == null) {
                return;
            }
            boolean z = true;
            runOnUiThreadSetLoading(true);
            QueryMobDataBean queryMobDataBeanExecuteQuery = this.sewaServiceRestClient.executeQuery(new QueryMobDataBean("get_due_list_pnc", null, getStringObjectLinkedHashMap(), 0));
            List<LinkedHashMap<String, Object>> result = queryMobDataBeanExecuteQuery != null ? queryMobDataBeanExecuteQuery.getResult() : null;
            if (result != null && !result.isEmpty()) {
                this.offset += result.size();
                if (result.size() != this.limit) {
                    z = false;
                }
                updateListWithNextPage(result, z);
                return;
            }
            updateListWithNextPage(new ArrayList(), false);
        } catch (RestHttpException e) {
            Log.e("DueListPNCFragment", "Error: " + e.getMessage());
            updateListWithNextPage(new ArrayList(), false);
        }
    }

    private LinkedHashMap<String, Object> getStringObjectLinkedHashMap() {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.selectedVillageIds.size(); i++) {
            sb.append(this.selectedVillageIds.get(i));
            if (i < this.selectedVillageIds.size() - 1) {
                sb.append(", ");
            }
        }
        linkedHashMap.put("locationIds", sb.toString());
        linkedHashMap.put("fromDate", this.fromDate);
        linkedHashMap.put("toDate", this.toDate);
        linkedHashMap.put("limit", Integer.valueOf(this.limit));
        linkedHashMap.put("offset", Integer.valueOf(this.offset));
        return linkedHashMap;
    }

    void updateListWithNextPage(List<LinkedHashMap<String, Object>> list, boolean z) {
        runOnUiThreadSetLoading(false);
        this.adapter.setHasMoreData(z);
        if (this.offset == 0 && list.isEmpty()) {
            this.recyclerView.setVisibility(8);
            this.noDataText.setVisibility(0);
        } else {
            this.recyclerView.setVisibility(0);
            this.noDataText.setVisibility(8);
            this.members.addAll(list);
            this.adapter.updateData(this.members);
        }
        updateNoDataMessage();
    }

    void runOnUiThreadSetLoading(boolean z) {
        this.adapter.setLoading(z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        updateNoDataMessage();
    }

    private void updateNoDataMessage() {
        if (this.fromDate == null || this.toDate == null) {
            this.noDataText.setText(R.string.select_month_to_get_data);
            this.noDataText.setVisibility(0);
        } else if (this.members.isEmpty()) {
            this.noDataText.setText(R.string.no_records_found);
            this.noDataText.setVisibility(0);
        } else {
            this.noDataText.setVisibility(8);
        }
    }
}
