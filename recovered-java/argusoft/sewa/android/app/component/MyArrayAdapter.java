package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MyArrayAdapter extends ArrayAdapter<String> {
    private List<String> myitems;

    public MyArrayAdapter(Context context, int i, List<String> list) {
        super(context, i, list);
        this.myitems = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.myitems.add(UtilBean.getMyLabel(it.next()));
        }
    }

    public MyArrayAdapter(Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.myitems = new ArrayList();
        for (String str : strArr) {
            this.myitems.add(UtilBean.getMyLabel(str));
        }
    }

    public void setItems(List<String> list) {
        this.myitems.clear();
        this.myitems.addAll(list);
        notifyDataSetChanged();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        MaterialTextView materialTextView = (MaterialTextView) super.getView(i, view, viewGroup);
        materialTextView.setText(this.myitems.get(i));
        materialTextView.setTextAppearance(viewGroup.getContext(), R.style.CustomAnswerView);
        return materialTextView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        final MaterialTextView materialTextView = (MaterialTextView) super.getDropDownView(i, view, viewGroup);
        materialTextView.setText(this.myitems.get(i));
        materialTextView.setTextAppearance(viewGroup.getContext(), R.style.CustomAnswerView);
        materialTextView.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.MyArrayAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                materialTextView.setSingleLine(false);
            }
        });
        return materialTextView;
    }
}
