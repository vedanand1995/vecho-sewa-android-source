package com.argusoft.sewa.android.app.component.listeners;

import android.app.DatePickerDialog;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.RadioGroup;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class RadioButtonDateListener implements View.OnClickListener, RadioGroup.OnCheckedChangeListener, DatePickerDialog.OnDateSetListener {
    public static final int DATE_VIEW_ID = 151;
    private long ansDate;
    private String ansRadio;
    private final Context context;
    private View datePickerView;
    private final String[] mandatoryMsg;
    private final List<OptionDataBean> optionsOrDatamap;
    private final QueFormBean queFormBean;
    private MaterialTextView txtDate;
    private final List<ValidationTagBean> validations;

    public RadioButtonDateListener(Context context, QueFormBean queFormBean) {
        this.context = context;
        this.queFormBean = queFormBean;
        this.optionsOrDatamap = UtilBean.getOptionsOrDataMap(queFormBean, false);
        if (queFormBean.getMandatorymessage() != null) {
            String[] strArrSplit = UtilBean.split(queFormBean.getMandatorymessage(), "/");
            if (strArrSplit.length > 1) {
                queFormBean.setMandatorymessage(strArrSplit[0]);
                this.mandatoryMsg = strArrSplit;
            } else {
                this.mandatoryMsg = new String[]{queFormBean.getMandatorymessage(), queFormBean.getMandatorymessage()};
            }
        } else {
            this.mandatoryMsg = new String[]{LabelConstants.VALUE_IS_REQUIRED, LabelConstants.VALUE_IS_REQUIRED};
        }
        if (queFormBean.getValidations() != null) {
            this.validations = queFormBean.getValidations();
        } else {
            this.validations = null;
        }
        if (queFormBean.getQuestionTypeView() != null) {
            this.datePickerView = ((View) queFormBean.getQuestionTypeView()).findViewById(DATE_VIEW_ID);
        }
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        if (this.datePickerView == null) {
            this.datePickerView = ((View) this.queFormBean.getQuestionTypeView()).findViewById(DATE_VIEW_ID);
        }
        this.ansRadio = this.optionsOrDatamap.get(i).getKey();
        String next = this.optionsOrDatamap.get(i).getNext();
        if (next != null && !next.equalsIgnoreCase("0") && !next.equalsIgnoreCase(LabelConstants.NULL)) {
            try {
                this.queFormBean.setNext(next);
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
        if (i == 0) {
            setDate(0L);
            showDatePicker(true);
        } else {
            setDate(0L);
            showDatePicker(false);
        }
        setAnswer();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DatePickerDialog datePickerDialog;
        DatePickerDialog datePickerDialog2;
        if (view.getId() == 2152) {
            MaterialTextView materialTextView = (MaterialTextView) view.findViewById(IdConstants.DATE_PICKER_TEXT_DATE_ID);
            this.txtDate = materialTextView;
            if (materialTextView != null) {
                String[] strArrSplit = UtilBean.split(materialTextView.getText().toString().trim(), "/");
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
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3);
        UtilBean.clearTimeFromDate(calendar);
        long timeInMillis = calendar.getTimeInMillis();
        setDate(timeInMillis);
        String strCheckValidation = DynamicUtils.checkValidation(this.ansRadio + "/" + timeInMillis, !this.queFormBean.isIgnoreLoop() ? this.queFormBean.getLoopCounter() : 0, this.validations);
        if (strCheckValidation == null) {
            setDate(timeInMillis);
        } else {
            setDate(0L);
            SewaUtil.generateToast(this.context, strCheckValidation);
        }
        setAnswer();
    }

    private String isValid() {
        String str = this.ansRadio;
        if (str == null || str.trim().length() == 0 || this.ansRadio.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            this.queFormBean.setMandatorymessage(this.mandatoryMsg[0]);
            return this.mandatoryMsg[0];
        }
        if (this.ansRadio.trim().equalsIgnoreCase(this.optionsOrDatamap.get(0).getKey()) && this.ansDate < 1) {
            this.queFormBean.setMandatorymessage(this.mandatoryMsg[1]);
            return this.mandatoryMsg[1];
        }
        this.queFormBean.setMandatorymessage(this.mandatoryMsg[0]);
        return null;
    }

    private void setAnswer() {
        if (isValid() == null) {
            String str = this.ansRadio;
            if (this.ansDate > 0) {
                str = str + "/" + this.ansDate;
            }
            this.queFormBean.setAnswer(str);
        } else {
            this.queFormBean.setAnswer(null);
        }
        Log.i(getClass().getSimpleName(), "Answer is : " + this.queFormBean.getAnswer());
    }

    private void setDate(long j) {
        this.ansDate = j;
        MaterialTextView materialTextView = this.txtDate;
        if (materialTextView != null) {
            if (j > 0) {
                materialTextView.setText(UtilBean.getMyLabel(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(this.ansDate))));
            } else {
                materialTextView.setText(UtilBean.getMyLabel("Select date"));
            }
        }
    }

    private void showDatePicker(boolean z) {
        View view = this.datePickerView;
        if (view != null) {
            if (z) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
        }
    }
}
