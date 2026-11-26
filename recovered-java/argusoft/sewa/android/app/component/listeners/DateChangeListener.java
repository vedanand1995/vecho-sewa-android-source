package com.argusoft.sewa.android.app.component.listeners;

import android.app.DatePickerDialog;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.TextView;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class DateChangeListener implements DatePickerDialog.OnDateSetListener, View.OnClickListener {
    private final Context context;
    private final QueFormBean queFormBean;
    private TextView txtDate;

    public DateChangeListener(QueFormBean queFormBean, Context context) {
        this.queFormBean = queFormBean;
        this.context = context;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3);
        TextView textView = this.txtDate;
        if (textView != null) {
            textView.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar.getTime()));
            Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + " is set to : " + ((Object) this.txtDate.getText()));
        }
        if (SharedStructureData.ACTIVE_CTBA_QUESTION_ID != null && SharedStructureData.ACTIVE_CTBA_QUESTION_ID.equals(Integer.valueOf(this.queFormBean.getId()))) {
            Integer numValueOf = 0;
            if (this.queFormBean.getLoopCounter() > 0 && !this.queFormBean.isIgnoreLoop()) {
                numValueOf = Integer.valueOf(this.queFormBean.getLoopCounter());
            }
            String strValueOf = String.valueOf(calendar.getTimeInMillis());
            ArrayList arrayList = new ArrayList();
            ValidationTagBean validationTagBean = new ValidationTagBean();
            validationTagBean.setMethod("isDateIn-Sub-110-0-0");
            validationTagBean.setMessage("Date of birth can’t be before 110 years");
            arrayList.add(validationTagBean);
            if (SharedStructureData.formType != null && SharedStructureData.formType.equals("CFHC")) {
                ValidationTagBean validationTagBean2 = new ValidationTagBean();
                validationTagBean2.setMethod("dobMaritalStatusValidation-defaultMaritalStatus");
                validationTagBean2.setMessage("Age can’t be less than 15 as per marital status");
                arrayList.add(validationTagBean2);
            }
            String strCheckValidation = DynamicUtils.checkValidation(strValueOf, numValueOf.intValue(), arrayList);
            if (strCheckValidation != null) {
                SewaUtil.generateToast(this.context, strCheckValidation);
                TextView textView2 = this.txtDate;
                if (textView2 != null) {
                    textView2.setText(UtilBean.getMyLabel("Select date"));
                }
                SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DOB_AS_PER_AADHAAR, numValueOf.intValue()));
                return;
            }
            if (SharedStructureData.formType != null && SharedStructureData.formType.equals("CFHC")) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("dob", numValueOf.intValue()), strValueOf);
            }
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DOB_AS_PER_AADHAAR, numValueOf.intValue()), strValueOf);
            return;
        }
        this.queFormBean.setAnswer(Long.valueOf(calendar.getTimeInMillis()));
        String string = this.queFormBean.getAnswer() != null ? this.queFormBean.getAnswer().toString() : null;
        if (string == null || string.trim().length() <= 0 || string.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            return;
        }
        List<ValidationTagBean> validations = this.queFormBean.getValidations();
        int loopCounter = !this.queFormBean.isIgnoreLoop() ? this.queFormBean.getLoopCounter() : 0;
        String strCheckValidation2 = DynamicUtils.checkValidation(string, loopCounter, validations);
        if (strCheckValidation2 != null) {
            Calendar calendar2 = Calendar.getInstance();
            if (loopCounter == 0) {
                String str = SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname());
                if (str != null && !str.equalsIgnoreCase(LabelConstants.NULL)) {
                    calendar2.setTimeInMillis(Long.parseLong(str));
                    SewaUtil.generateToast(this.context, strCheckValidation2);
                    TextView textView3 = this.txtDate;
                    if (textView3 != null) {
                        textView3.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar2.getTime()));
                    }
                    this.queFormBean.setAnswer(SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname()));
                } else {
                    SewaUtil.generateToast(this.context, strCheckValidation2);
                    TextView textView4 = this.txtDate;
                    if (textView4 != null) {
                        textView4.setText(UtilBean.getMyLabel("Select date"));
                    }
                    this.queFormBean.setAnswer(null);
                }
            } else {
                String str2 = SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname() + loopCounter);
                if (str2 != null && !str2.equalsIgnoreCase(LabelConstants.NULL)) {
                    calendar2.setTimeInMillis(Long.parseLong(str2));
                    SewaUtil.generateToast(this.context, strCheckValidation2);
                    TextView textView5 = this.txtDate;
                    if (textView5 != null) {
                        textView5.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(calendar2.getTime()));
                    }
                    this.queFormBean.setAnswer(SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname() + loopCounter));
                } else {
                    SewaUtil.generateToast(this.context, strCheckValidation2);
                    TextView textView6 = this.txtDate;
                    if (textView6 != null) {
                        textView6.setText(UtilBean.getMyLabel("Select date"));
                    }
                    this.queFormBean.setAnswer(null);
                }
            }
            DynamicUtils.applyFormula(this.queFormBean, false);
            return;
        }
        DynamicUtils.applyFormula(this.queFormBean, true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DatePickerDialog datePickerDialog;
        boolean z;
        this.txtDate = (TextView) view.findViewById(IdConstants.DATE_PICKER_TEXT_DATE_ID);
        Calendar calendar = Calendar.getInstance();
        boolean z2 = false;
        if (this.txtDate.getText() != null) {
            String[] strArrSplit = UtilBean.split(this.txtDate.getText().toString(), "/");
            if (strArrSplit.length == 3) {
                datePickerDialog = new DatePickerDialog(this.context, this, Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[1]) - 1, Integer.parseInt(strArrSplit[0]));
            } else {
                datePickerDialog = new DatePickerDialog(this.context, this, calendar.get(1), calendar.get(2), calendar.get(5));
            }
        } else {
            datePickerDialog = new DatePickerDialog(this.context, this, calendar.get(1), calendar.get(2), calendar.get(5));
        }
        List<ValidationTagBean> validations = this.queFormBean.getValidations();
        if (validations != null) {
            Iterator<ValidationTagBean> it = validations.iterator();
            z = false;
            while (it.hasNext()) {
                String method = it.next().getMethod();
                if (method != null) {
                    String lowerCase = method.toLowerCase(Locale.getDefault());
                    if (lowerCase.contains(FormulaConstants.VALIDATION_IS_PAST_DATE.toLowerCase(Locale.getDefault()))) {
                        z2 = true;
                    }
                    if (lowerCase.contains(FormulaConstants.VALIDATION_IS_NOT_TODAY.toLowerCase(Locale.getDefault()))) {
                        z = true;
                    }
                }
            }
        } else {
            z = false;
        }
        if (z2) {
            Calendar calendar2 = Calendar.getInstance();
            if (z) {
                calendar2.add(5, 1);
            }
            datePickerDialog.getDatePicker().setMinDate(calendar2.getTimeInMillis());
        } else {
            datePickerDialog.getDatePicker().setMaxDate(calendar.getTimeInMillis());
        }
        datePickerDialog.show();
    }
}
