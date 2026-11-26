package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class AgeBoxChangeListener implements View.OnFocusChangeListener {
    private String calculatedDate;
    private final Context context;
    private final QueFormBean queFormBean;
    private TextView textDate;
    private int year = -1;
    private int month = -1;
    private int day = -1;

    public AgeBoxChangeListener(Context context, QueFormBean queFormBean) {
        this.context = context;
        this.queFormBean = queFormBean;
        if (queFormBean.getDatamap() == null || queFormBean.getDatamap().isEmpty()) {
            return;
        }
        this.calculatedDate = UtilBean.getDurationLabel(Arrays.asList(queFormBean.getDatamap().split(GlobalTypes.COMMA)));
    }

    public void setTextDate(TextView textView) {
        this.textDate = textView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        EditText editText = (EditText) view;
        if (z) {
            return;
        }
        int id = editText.getId();
        if (id == 10031) {
            try {
                try {
                    this.year = Integer.parseInt(editText.getText().toString());
                    editText.setHint("Enter Year");
                } catch (Exception unused) {
                    editText.setHint("Enter valid Year");
                    editText.setText("");
                    SewaUtil.generateToast(view.getContext(), "Enter valid years");
                    this.year = -1;
                }
                return;
            } finally {
            }
        }
        try {
            if (id == 10032) {
                try {
                    this.month = Integer.parseInt(editText.getText().toString());
                    editText.setHint("Enter Month");
                    setAnswer();
                } catch (Exception unused2) {
                    editText.setHint("Enter valid Month");
                    editText.setText("");
                    SewaUtil.generateToast(view.getContext(), "Enter valid months");
                    this.month = -1;
                }
                return;
            }
            if (id == 10033) {
                try {
                    try {
                        this.day = Integer.parseInt(editText.getText().toString());
                        editText.setHint("Enter Day");
                        setAnswer();
                    } catch (Exception unused3) {
                        editText.setHint("Enter valid Day");
                        editText.setText("");
                        SewaUtil.generateToast(view.getContext(), "Enter valid days");
                        this.day = -1;
                    }
                } finally {
                }
            }
        } finally {
        }
    }

    private void setAnswer() {
        if (this.year != -1 || this.month != -1 || this.day != -1) {
            Calendar calendar = Calendar.getInstance();
            if (this.year != -1) {
                calendar = Calendar.getInstance();
                calendar.add(1, this.year * (-1));
            }
            int i = this.month;
            if (i != -1) {
                if (i < 0 || i > 11) {
                    this.queFormBean.setAnswer(null);
                    this.queFormBean.setMandatorymessage("Months should be between 0 to 11");
                    return;
                }
                calendar.add(2, i * (-1));
            }
            int i2 = this.day;
            if (i2 != -1) {
                if (i2 < 0 || i2 > 30) {
                    this.queFormBean.setAnswer(null);
                    this.queFormBean.setMandatorymessage("Days should be between 0 to 30");
                    return;
                }
                calendar.add(7, i2 * (-1));
            }
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            this.queFormBean.setAnswer(Long.valueOf(calendar.getTime().getTime()));
            Log.i(getClass().getSimpleName(), "The Age in year/month/day wise : " + calendar.getTime());
            if (this.textDate != null) {
                this.textDate.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar.getTime()));
                return;
            }
            return;
        }
        this.queFormBean.setAnswer(null);
        if (this.textDate != null) {
            String str = this.calculatedDate;
            if (str != null && !str.isEmpty()) {
                this.textDate.setText(this.calculatedDate);
            } else {
                this.textDate.setText(UtilBean.getMyLabel(LabelConstants.YEAR_AND_MONTH_NOT_YET_ENTERED));
            }
        }
    }
}
