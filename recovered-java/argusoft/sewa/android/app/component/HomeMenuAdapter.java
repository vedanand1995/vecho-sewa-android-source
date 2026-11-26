package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.MenuConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HomeMenuAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private final Map<Integer, View> adapterView = new HashMap();
    private final String[] constant;
    private final Context context;
    private final int[] images;
    private boolean isAnyLmsUpdate;
    private boolean isElevated;
    private boolean isNewNotification;
    private final String[] names;
    OnMenuItemViewVClickListener onItemClickListener;

    public HomeMenuAdapter(Context context, int[] iArr, String[] strArr, String[] strArr2, boolean z, boolean z2, boolean z3, OnMenuItemViewVClickListener onMenuItemViewVClickListener) {
        this.context = context;
        this.images = iArr;
        this.names = strArr;
        this.constant = strArr2;
        this.isElevated = z;
        this.isNewNotification = z2;
        this.isAnyLmsUpdate = z3;
        this.onItemClickListener = onMenuItemViewVClickListener;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.home_screen_cards, viewGroup, false);
        MyViewHolder myViewHolder = new MyViewHolder(viewInflate);
        this.adapterView.put(Integer.valueOf(myViewHolder.getAdapterPosition()), viewInflate);
        return myViewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, final int i) {
        if (this.names[i].equalsIgnoreCase(LabelConstants.WORK_LOG_TITLE)) {
            this.names[i] = "Sync Status";
        }
        myViewHolder.textView.setText(UtilBean.getMyLabel(this.names[i]));
        myViewHolder.image.setImageResource(this.images[i]);
        if (!this.isElevated) {
            myViewHolder.cardView.setElevation(0.0f);
            if (i % 3 != 0) {
                myViewHolder.cardView.setBackground(this.context.getDrawable(R.drawable.line_background_left));
            }
        }
        if (this.isNewNotification && this.constant[i].equalsIgnoreCase(MenuConstants.ANNOUNCEMENTS)) {
            myViewHolder.notificationBadge.setVisibility(0);
        }
        if (this.isAnyLmsUpdate && this.constant[i].equalsIgnoreCase(MenuConstants.LEARNING_MANAGEMENT_SYSTEM)) {
            myViewHolder.notificationBadge.setVisibility(0);
        } else {
            myViewHolder.notificationBadge.setVisibility(8);
        }
        myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.HomeMenuAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m557x53f58d50(i, myViewHolder, view);
            }
        });
    }

    /* renamed from: lambda$onBindViewHolder$0$com-argusoft-sewa-android-app-component-HomeMenuAdapter, reason: not valid java name */
    /* synthetic */ void m557x53f58d50(int i, MyViewHolder myViewHolder, View view) {
        this.onItemClickListener.onItemClickListener(i, myViewHolder.itemView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        String[] strArr = this.names;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        CardView cardView;
        ImageView image;
        ImageView notificationBadge;
        TextView textView;

        public MyViewHolder(View view) {
            super(view);
            this.image = (ImageView) view.findViewById(R.id.card_imageView);
            this.notificationBadge = (ImageView) view.findViewById(R.id.notification_badge);
            this.textView = (TextView) view.findViewById(R.id.card_textView);
            this.cardView = (CardView) view.findViewById(R.id.card_view);
        }
    }

    public void setNewNotification(boolean z, boolean z2) {
        this.isNewNotification = z;
        this.isAnyLmsUpdate = z2;
        notifyDataSetChanged();
    }

    public View getLayoutAtPosition(int i) {
        if (this.adapterView.isEmpty() || !this.adapterView.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.adapterView.get(Integer.valueOf(i));
    }

    public void setIconAtPosition(int i, int i2) {
        this.images[i2] = i;
        notifyDataSetChanged();
    }

    public void setLabelAtPosition(String str, int i) {
        this.names[i] = str;
        notifyDataSetChanged();
    }
}
