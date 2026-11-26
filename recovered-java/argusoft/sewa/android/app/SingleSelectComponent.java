package com.argusoft.sewa.android.app;

import android.content.Context;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class SingleSelectComponent extends LinearLayout {
    private final Context context;
    private int defaultIndex;
    private final String defaultOption;
    private final List<String> optionConstants;
    private final List<String> optionLabels;
    private final Map<String, String> options;
    private Spinner spinner;

    public SingleSelectComponent(Context context, Map<String, String> map, String str) {
        super(context);
        this.optionLabels = new LinkedList();
        this.optionConstants = new LinkedList();
        this.defaultIndex = 0;
        this.context = context;
        this.options = map;
        this.defaultOption = str;
        initView();
    }

    private void initView() {
        this.optionLabels.add("-Select-");
        this.optionConstants.add("-1");
        for (Map.Entry<String, String> entry : this.options.entrySet()) {
            this.optionLabels.add(entry.getValue());
            this.optionConstants.add(entry.getKey());
            if (this.defaultOption != null && entry.getKey().equalsIgnoreCase(this.defaultOption)) {
                this.defaultIndex = this.optionConstants.indexOf(entry.getKey());
                System.out.println(this.defaultIndex);
            }
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, (String[]) this.optionLabels.toArray(new String[0]), this.defaultIndex, -1);
        this.spinner = spinner;
        addView(spinner);
    }

    public String getAnswerString() {
        return this.optionConstants.get(this.spinner.getSelectedItemPosition());
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.spinner.setOnItemSelectedListener(onItemSelectedListener);
    }
}
