package com.argusoft.sewa.android.app.component;

import android.app.DatePickerDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.DatePicker;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class IncentiveDateComponent extends AppCompatEditText {
    private final Calendar calendar;
    private final Context context;
    private final String hint;
    private Date selectedDate;

    public IncentiveDateComponent(Context context, String str) {
        super(context);
        this.calendar = Calendar.getInstance();
        this.selectedDate = null;
        this.context = context;
        this.hint = str;
        initView();
    }

    public IncentiveDateComponent(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.calendar = Calendar.getInstance();
        this.selectedDate = null;
        this.context = context;
        this.hint = null;
        initView();
    }

    public IncentiveDateComponent(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.calendar = Calendar.getInstance();
        this.selectedDate = null;
        this.context = context;
        this.hint = null;
        initView();
    }

    private void initView() {
        String str = this.hint;
        if (str != null) {
            setHint(str);
        }
        setFocusable(false);
        setEnabled(true);
        setInputType(4);
        setBackground(ContextCompat.getDrawable(this.context, R.drawable.line_background_bottom));
        this.calendar.set(11, 0);
        this.calendar.set(12, 0);
        this.calendar.set(13, 0);
        this.calendar.set(14, 0);
        setOnClickListener(getDateComponentClickListener());
    }

    private View.OnClickListener getDateComponentClickListener() {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.IncentiveDateComponent$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m564x87f20348(view);
            }
        };
    }

    /* renamed from: lambda$getDateComponentClickListener$1$com-argusoft-sewa-android-app-component-IncentiveDateComponent, reason: not valid java name */
    /* synthetic */ void m564x87f20348(View view) {
        DatePickerDialog.OnDateSetListener onDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.argusoft.sewa.android.app.component.IncentiveDateComponent$$ExternalSyntheticLambda1
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                this.f$0.m563x990ff69(datePicker, i, i2, i3);
            }
        };
        Calendar calendar = Calendar.getInstance();
        calendar.add(2, -1);
        calendar.set(5, 1);
        DatePickerDialog datePickerDialog = new DatePickerDialog(this.context, onDateSetListener, this.calendar.get(1), this.calendar.get(2), this.calendar.get(5));
        datePickerDialog.getDatePicker().setMaxDate(new Date().getTime());
        datePickerDialog.getDatePicker().setMinDate(calendar.getTimeInMillis());
        datePickerDialog.show();
    }

    /* renamed from: lambda$getDateComponentClickListener$0$com-argusoft-sewa-android-app-component-IncentiveDateComponent, reason: not valid java name */
    /* synthetic */ void m563x990ff69(DatePicker datePicker, int i, int i2, int i3) {
        this.calendar.set(1, i);
        this.calendar.set(2, i2);
        this.calendar.set(5, i3);
        this.selectedDate = this.calendar.getTime();
        updateDate();
    }

    private void updateDate() {
        setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(this.calendar.getTime()));
    }

    public Date getSelectedDate() {
        return this.selectedDate;
    }

    public void clearData() {
        this.selectedDate = null;
        setText("");
        String str = this.hint;
        if (str != null) {
            setHint(str);
        }
        this.calendar.set(1, Calendar.getInstance().get(1));
        this.calendar.set(2, Calendar.getInstance().get(2));
        this.calendar.set(5, Calendar.getInstance().get(5));
    }
}
