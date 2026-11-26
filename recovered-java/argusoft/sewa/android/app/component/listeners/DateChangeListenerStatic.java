package com.argusoft.sewa.android.app.component.listeners;

import android.app.DatePickerDialog;
import android.content.Context;
import android.view.View;
import android.widget.DatePicker;
import android.widget.TextView;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class DateChangeListenerStatic implements DatePickerDialog.OnDateSetListener, View.OnClickListener {
    private final Context context;
    private Date dateSet;
    private TextView txtDate;
    private List<ValidationTagBean> validations;

    public DateChangeListenerStatic(Context context, List<ValidationTagBean> list) {
        this.context = context;
        this.validations = list;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3, 0, 0, 0);
        String strCheckValidation = DynamicUtils.checkValidation(String.valueOf(calendar.getTime().getTime()), 0, this.validations);
        if (strCheckValidation != null) {
            this.txtDate.setText(UtilBean.getMyLabel("Select date"));
            this.dateSet = null;
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(strCheckValidation));
        } else {
            this.dateSet = calendar.getTime();
            TextView textView = this.txtDate;
            if (textView != null) {
                textView.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar.getTime()));
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DatePickerDialog datePickerDialog;
        DatePickerDialog datePickerDialog2;
        TextView textView = (TextView) view.findViewById(IdConstants.DATE_PICKER_TEXT_DATE_ID);
        this.txtDate = textView;
        if (textView.getText() != null) {
            String[] strArrSplit = UtilBean.split(this.txtDate.getText().toString(), "/");
            if (strArrSplit.length == 3) {
                datePickerDialog2 = new DatePickerDialog(this.context, this, Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[1]) - 1, Integer.parseInt(strArrSplit[0]));
                datePickerDialog2.show();
            } else {
                Calendar calendar = Calendar.getInstance();
                datePickerDialog = new DatePickerDialog(this.context, this, calendar.get(1), calendar.get(2), calendar.get(5));
            }
        } else {
            Calendar calendar2 = Calendar.getInstance();
            datePickerDialog = new DatePickerDialog(this.context, this, calendar2.get(1), calendar2.get(2), calendar2.get(5));
        }
        datePickerDialog2 = datePickerDialog;
        datePickerDialog2.show();
    }

    public Date getDateSet() {
        return this.dateSet;
    }

    public void setDateSet(Date date) {
        this.dateSet = date;
    }
}
