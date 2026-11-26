package com.argusoft.sewa.android.app.component.listeners;

import android.app.TimePickerDialog;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.TimePicker;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.List;

/* loaded from: classes.dex */
public class TimeChangeListener implements TimePickerDialog.OnTimeSetListener, View.OnClickListener {
    private final Context context;
    private final QueFormBean queFormBean;
    private TextView txtDate;

    public TimeChangeListener(QueFormBean queFormBean, Context context) {
        this.queFormBean = queFormBean;
        this.context = context;
    }

    @Override // android.app.TimePickerDialog.OnTimeSetListener
    public void onTimeSet(TimePicker timePicker, int i, int i2) {
        if (this.txtDate != null) {
            this.txtDate.setText(UtilBean.getFormattedTime(i) + ":" + UtilBean.getFormattedTime(i2));
            Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + " is set to : " + ((Object) this.txtDate.getText()));
        }
        this.queFormBean.setAnswer(i + ":" + i2);
        String string = this.queFormBean.getAnswer() != null ? this.queFormBean.getAnswer().toString() : null;
        if (string == null || string.trim().length() <= 0 || string.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            return;
        }
        List<ValidationTagBean> validations = this.queFormBean.getValidations();
        int loopCounter = !this.queFormBean.isIgnoreLoop() ? this.queFormBean.getLoopCounter() : 0;
        String strCheckValidation = DynamicUtils.checkValidation(string, loopCounter, validations);
        if (strCheckValidation != null) {
            String str = SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname());
            if (str != null && !str.equalsIgnoreCase(LabelConstants.NULL)) {
                SewaUtil.generateToast(this.context, strCheckValidation);
                TextView textView = this.txtDate;
                if (textView != null) {
                    textView.setText(String.format("%s:%s", UtilBean.getFormattedTime(i), UtilBean.getFormattedTime(i2)));
                }
                if (loopCounter == 0) {
                    this.queFormBean.setAnswer(SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname()));
                } else {
                    this.queFormBean.setAnswer(SharedStructureData.relatedPropertyHashTable.get(this.queFormBean.getRelatedpropertyname() + loopCounter));
                }
            } else {
                SewaUtil.generateToast(this.context, strCheckValidation);
                TextView textView2 = this.txtDate;
                if (textView2 != null) {
                    textView2.setText(UtilBean.getMyLabel("Select time"));
                }
                this.queFormBean.setAnswer(null);
            }
            DynamicUtils.applyFormula(this.queFormBean, false);
            return;
        }
        DynamicUtils.applyFormula(this.queFormBean, true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws NumberFormatException {
        TimePickerDialog timePickerDialog;
        TextView textView = (TextView) view.findViewById(IdConstants.DATE_PICKER_TEXT_DATE_ID);
        this.txtDate = textView;
        if (textView != null && textView.getText() != null && !this.txtDate.getText().equals("Select time") && !this.txtDate.getText().equals(UtilBean.getMyLabel("Select time"))) {
            timePickerDialog = new TimePickerDialog(this.context, this, Integer.parseInt(this.txtDate.getText().toString().split(":")[0]), Integer.parseInt(this.txtDate.getText().toString().split(":")[1]), false);
        } else {
            timePickerDialog = new TimePickerDialog(this.context, this, 0, 0, false);
        }
        timePickerDialog.show();
    }
}
