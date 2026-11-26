package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MyMenuAdapter extends BaseAdapter {
    private final Map<Integer, View> adapterView = new HashMap();
    private final Context context;
    private final int[] images;
    private boolean isAnyLmsUpdate;
    private boolean isElevated;
    private final String[] names;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public MyMenuAdapter(Context context, int[] iArr, String[] strArr, boolean z, boolean z2) {
        this.context = context;
        this.images = iArr;
        this.names = strArr;
        this.isElevated = z;
        this.isAnyLmsUpdate = z2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        String[] strArr = this.names;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        String[] strArr = this.names;
        if (strArr != null) {
            return strArr[i];
        }
        return null;
    }

    public View getLayoutAtPosition(int i) {
        if (this.adapterView.isEmpty() || !this.adapterView.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.adapterView.get(Integer.valueOf(i));
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate = this.adapterView.get(Integer.valueOf(i));
        if (viewInflate == null && this.names != null && this.images != null) {
            viewInflate = LayoutInflater.from(this.context).inflate(R.layout.home_screen_cards, (ViewGroup) null);
            if (!this.isElevated) {
                viewInflate.setPadding(-20, 0, 0, 0);
                View viewFindViewById = viewInflate.findViewById(R.id.card_view);
                viewFindViewById.setElevation(0.0f);
                if (i % 3 != 0) {
                    viewFindViewById.setBackground(this.context.getDrawable(R.drawable.line_background_left));
                }
            }
            ((ImageView) viewInflate.findViewById(R.id.card_imageView)).setImageResource(this.images[i]);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.notification_badge);
            if (this.isAnyLmsUpdate && this.names[i].equalsIgnoreCase(LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE)) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            ((TextView) viewInflate.findViewById(R.id.card_textView)).setText(UtilBean.getMyLabel(this.names[i]));
            this.adapterView.put(Integer.valueOf(i), viewInflate);
        }
        return viewInflate;
    }

    public void setNewNotification(boolean z) {
        this.isAnyLmsUpdate = z;
        notifyDataSetChanged();
    }
}
