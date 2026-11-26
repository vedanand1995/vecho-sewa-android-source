package com.argusoft.sewa.android.app.activity.DueList.CS;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.SearchComponent;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class DueListCSAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int VIEW_TYPE_ITEM = 0;
    private static final int VIEW_TYPE_LOADING = 1;
    private List<LinkedHashMap<String, Object>> members;
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMM yyyy", Locale.getDefault());
    public boolean isLoading = false;
    public boolean hasMoreData = true;

    public DueListCSAdapter(List<LinkedHashMap<String, Object>> list) {
        this.members = list == null ? new ArrayList<>() : list;
    }

    public void updateData(List<LinkedHashMap<String, Object>> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.members = list;
        notifyDataSetChanged();
    }

    public void setLoading(boolean z) {
        this.isLoading = z;
        notifyDataSetChanged();
    }

    public void setHasMoreData(boolean z) {
        this.hasMoreData = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (this.isLoading && i == this.members.size()) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new LoadingViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_loading_footer, viewGroup, false));
        }
        return new MemberViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_member_data_dl_cs, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof MemberViewHolder) {
            LinkedHashMap<String, Object> linkedHashMap = this.members.get(i);
            String myLabel = (String) linkedHashMap.get("fullName");
            String myLabel2 = (String) linkedHashMap.get("uniqueHealthId");
            Date dateFromObject = getDateFromObject(linkedHashMap.get(RelatedPropertyNameConstants.DUE_DATE));
            Date dateFromObject2 = getDateFromObject(linkedHashMap.get("dob"));
            String str = (String) linkedHashMap.get(RelatedPropertyNameConstants.IMMUNISATION_GIVEN);
            String str2 = (String) linkedHashMap.get("immunisationOverdue");
            MemberViewHolder memberViewHolder = (MemberViewHolder) viewHolder;
            TextView textView = memberViewHolder.nameText;
            if (myLabel == null) {
                myLabel = UtilBean.getMyLabel("Not available");
            }
            textView.setText(myLabel);
            TextView textView2 = memberViewHolder.idText;
            if (myLabel2 == null) {
                myLabel2 = UtilBean.getMyLabel("Not available");
            }
            textView2.setText(String.format("%s", UtilBean.getMyLabel(myLabel2)));
            memberViewHolder.dueDateText.setText(String.format("%s: %s", UtilBean.getMyLabel("Due"), dateFromObject != null ? this.dateFormat.format(dateFromObject) : UtilBean.getMyLabel("Not available")));
            memberViewHolder.immunizationGiven.setText((str == null || str.isEmpty()) ? UtilBean.getMyLabel("No immunizations given") : str.replace("_", " ").replace(GlobalTypes.COMMA, ", "));
            memberViewHolder.dueImmunization.setText((str2 == null || str2.isEmpty()) ? UtilBean.getMyLabel("No immunizations due") : str2.replace("_", " ").replace(GlobalTypes.COMMA, ", "));
            memberViewHolder.dobText.setText(String.format("%s: %s", UtilBean.getMyLabel(SearchComponent.SearchTypes.DOB), dateFromObject2 != null ? this.dateFormat.format(dateFromObject2) : UtilBean.getMyLabel("Not available")));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<LinkedHashMap<String, Object>> list = this.members;
        if (list == null) {
            return 0;
        }
        return list.size() + (this.isLoading ? 1 : 0);
    }

    public static class MemberViewHolder extends RecyclerView.ViewHolder {
        TextView dobText;
        TextView dueDateText;
        TextView dueImmunization;
        TextView idText;
        TextView immunizationGiven;
        TextView nameText;

        public MemberViewHolder(View view) {
            super(view);
            this.nameText = (TextView) view.findViewById(R.id.member_name);
            this.idText = (TextView) view.findViewById(R.id.member_id);
            this.dueDateText = (TextView) view.findViewById(R.id.member_due_date);
            this.immunizationGiven = (TextView) view.findViewById(R.id.immunizations_given);
            this.dobText = (TextView) view.findViewById(R.id.member_dob);
            this.dueImmunization = (TextView) view.findViewById(R.id.over_due_immunizations_given);
        }
    }

    public static class LoadingViewHolder extends RecyclerView.ViewHolder {
        ProgressBar progressBar;

        public LoadingViewHolder(View view) {
            super(view);
            this.progressBar = (ProgressBar) view.findViewById(R.id.loading_progress);
        }
    }

    private Date getDateFromObject(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (obj instanceof Number) {
            return new Date(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            return new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4, Locale.getDefault()).parse((String) obj);
        }
        return null;
    }
}
